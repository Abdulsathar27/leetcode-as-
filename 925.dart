class Solution {
  bool isLongPressedName(String name, String typed) {
    int i = 0;

    for (int j = 0; j < typed.length; j++) {
      if (i < name.length && name[i] == typed[j]) {
        i++;
      } else if (j == 0 || typed[j] != typed[j - 1]) {
        return false;
      }
    }

    return i == name.length;
  }
}

void main() {
  Solution s = Solution();
  print(s.isLongPressedName("alex", "aaleex")); 
  print(s.isLongPressedName("saeed", "ssaaedd")); 
}


// This Dart program checks whether the typed string could be a valid long-pressed version of the name string.
// It uses two pointers, where i tracks the current character in name and j moves through typed.
// If the characters match, the pointer for name moves forward; otherwise, 
// the program checks whether the current character in typed is a repetition of the previous character,
// which would indicate a long press. If it is not a valid repetition,
// the function immediately returns false because the typing pattern is invalid.
// After processing all characters in typed, the function confirms that all characters in name were successfully matched.
// If so, it returns true, indicating that typed is a valid long-pressed version of name.