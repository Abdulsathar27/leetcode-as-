class Solution {
  int canBeTypedWords(String text, String brokenLetters) {
    List<int> broken = List.filled(26, 0);

    for (var c in brokenLetters.split('')) {
      broken[c.codeUnitAt(0) - 'a'.codeUnitAt(0)] = 1;
    }

    int count = 0;
    bool ok = true;

    for (int i = 0; i < text.length; i++) { 
      if (text[i] != ' ') {
        int idx = text.codeUnitAt(i) - 'a'.codeUnitAt(0);
        if (idx < 0 || idx >= 26 || broken[idx] == 1) {
          ok = false;
        }
      } else {
        if (ok) count++;
        ok = true;
      }
    }

    if (ok) count++; 
    return count;
  }
}

void main() {
  Solution s = Solution();
  print(s.canBeTypedWords("hello world", "ad")); 
}
