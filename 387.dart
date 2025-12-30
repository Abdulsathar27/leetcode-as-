class Solution {
  int firstUniqChar(String s) {
    List<int> count = List.filled(26, 0);

    for (int i = 0; i < s.length; i++) {
      count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    for (int i = 0; i < s.length; i++) {
      if (count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)] == 1) {
        return i;
      }
    }

    return -1;
  }
}

void main() {
  Solution s = Solution();
  print(s.firstUniqChar("leetcode")); // 0
  print(s.firstUniqChar("loveleetcode")); // 2
  print(s.firstUniqChar("aabb")); // -1
}

// This Dart program finds the index of the first non-repeating character in a string. 
// It starts by creating a frequency list of size 26 to count how many times each lowercase letter appears in the string.
// In the first loop, each character’s count is incremented using its ASCII position relative to 'a'. In the second loop,
// the program scans the string again and checks which character has a frequency of exactly one.
// As soon as it finds such a character, it returns its index, and if no unique character exists, it returns -1.
