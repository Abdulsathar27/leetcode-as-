
class Solution {
  int countCharacters(List<String> words, String chars) {
    int answers = 0;
    List<int> count = List.filled(26, 0);

    
    for (var c in chars.split('')) {
      int idx = c.codeUnitAt(0) - 'a'.codeUnitAt(0);
      count[idx]++;
    }

    for (String word in words) {
      List<int> tempCount = List.from(count);
      bool ok = true;

      for (int i = 0; i < word.length; i++) {
        int idx = word.codeUnitAt(i) - 'a'.codeUnitAt(0);

      
        if (--tempCount[idx] < 0) {
          ok = false;
          break;
        }
      }

      if (ok) {
        answers += word.length;
      }
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.countCharacters(["cat", "bt", "hat", "tree"], "atach"));
}
// This Dart program calculates the total length of all words that can be formed using a given set of characters,
// where each character can be used only as many times as it appears.
// It first builds a frequency array for the available characters in chars,
// counting how many times each letter occurs. For each word,
// it creates a temporary copy of this frequency array and checks every character in the word by decrementing its count.
// If any character’s count becomes negative, it means the word cannot be formed, so the word is skipped.
// If all characters are successfully matched, the length of that word is added to the final answer.
// For example, with ["cat", "bt", "hat", "tree"] and "atach", only "cat" and "hat" can be formed, giving a total length of 6.