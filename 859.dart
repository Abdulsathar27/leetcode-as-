class Solution {
  bool buddyStrings(String s, String goal) {
    if (s.length != goal.length) {
      return false;
    }

    if (s == goal && hasDuplicateLetters(s)) {
      return true;
    }

    List<int> diffIndices = [];

    for (int i = 0; i < s.length; i++) {
      if (s[i] != goal[i]) {
        diffIndices.add(i);
      }
    }

    return diffIndices.length == 2 &&
        s[diffIndices[0]] == goal[diffIndices[1]] &&
        s[diffIndices[1]] == goal[diffIndices[0]];
  }

  bool hasDuplicateLetters(String s) {
    List<int> count = List.filled(26, 0);

    for (int i = 0; i < s.length; i++) {
      count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    return count.any((freq) => freq > 1);
  }
}

void main() {
  Solution sol = Solution();

  print(sol.buddyStrings("ab", "ba"));   // true
  print(sol.buddyStrings("ab", "ab"));   // false
  print(sol.buddyStrings("aa", "aa"));   // true
  print(sol.buddyStrings("abcd", "badc")); // false
}