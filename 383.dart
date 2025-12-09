class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<int> count = List.filled(26, 0);

    for (var c in magazine.split('')) {
      int idx = c.codeUnitAt(0) - 'a'.codeUnitAt(0);
      count[idx]++;
    }

    for (var c in ransomNote.split('')) {
      int idx = c.codeUnitAt(0) - 'a'.codeUnitAt(0);
      if (count[idx] == 0) {
        return false;
      }
      count[idx]--;
    }

    return true;
  }
}

void main() {
  Solution s = Solution();
  print(s.canConstruct("aa", "aab")); // true
  print(s.canConstruct("aa", "ab"));  // false
}

// This Dart program checks whether a ransom note can be built using letters from a magazine,
// where each character in the magazine can be used only once.
// It first creates a frequency list of size 26 to count 
// how many times each lowercase letter appears in the magazine.
// Then, as it loops through each character of the ransom note,
// it checks whether the required letter is available in the frequency list.
// If any needed letter has a count of zero, the function immediately returns false because 
// the magazine doesn’t provide enough characters. If all characters are successfully matched,
// the function returns true, indicating that the ransom note can be constructed.
