class Solution {
  bool areOccurrencesEqual(String s) {
    int n = s.length;
    List<int> freq = List.filled(26, 0);

    for (int i = 0; i < n; i++) {
      freq[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    int count = 0;
    for (int i = 0; i < n; i++) {
      if (s[i] == s[0]) {
        count++;
      }
    }

    for (int i = 0; i < 26; i++) {
      if (freq[i] != 0 && freq[i] != count) {
        return false;
      }
    }

    return true;
  }
}

void main() {
  Solution s = Solution();
  print(s.areOccurrencesEqual("abacbc")); 
  print(s.areOccurrencesEqual("aaabb"));  
}

// This Dart program checks whether all characters in a string appear the same number of times. 
// It first creates a frequency array of size 26 to count how many times each lowercase letter occurs in the string.
// Then it calculates the occurrence count of the first character and treats that value as the reference count. 
// After that, it scans through the frequency array and verifies that every character that appears in the string 
// has a frequency equal to this reference count. If any character has a different nonzero frequency, 
// the function immediately returns false. If all character frequencies match, the function returns true,
// confirming that all occurrences are equal.