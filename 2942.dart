class Solution {
  List<int> findWordsContaining(List<String> words, String x) {
    List<int> ans = [];

    for (int i = 0; i < words.length; i++) {
      if (words[i].contains(x)) {
        ans.add(i);
      }
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.findWordsContaining(["apple", "banana", "cherry", "date"], "a")); 
}

// This Dart program finds the indices of all words in a list that contain a specific character.
// In the findWordsContaining function, it loops through each word in the words list and checks whether
// that word includes the given character x using the .contains() method.
// If the character is found, the index of that word (i) is added to the list ans. 
// After checking all words, the function returns ans, which holds the positions of the matching words.
// For example, in the list ["apple", "banana", "cherry", "date"] with the character "a", the words at indices 0, 1, and 3 contain "a",
// so the output is [0, 1, 3].