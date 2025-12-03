class Solution {
  bool isAnagram(String s, String t) {
    s = s.toLowerCase();
    t = t.toLowerCase();

    if (s.length != t.length) return false;

    List<int> freq = List.filled(26, 0);

    for (int i = 0; i < s.length; i++) {
      freq[s.codeUnitAt(i) - 97]++; // 'a' = 97
      freq[t.codeUnitAt(i) - 97]--;
    }

    for (int x in freq) {
      if (x != 0) return false;
    }

    return true;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isAnagram("Anagram", "Nagaram")); // true
  print(sol.isAnagram("rat", "car"));         // false
}


// This Dart program checks whether two strings are anagrams — meaning they contain the same characters with the same frequency,
// but possibly in a different order.

// Here’s how it works:

// Both strings s and t are converted to lowercase to make the comparison case-insensitive.

// If the lengths are different, they can’t be anagrams, so it immediately returns false.

// A frequency list freq of size 26 (for all English letters) is created, initialized with zeros.

// The program loops through both strings simultaneously:

// It increments the count for the letter in s and decrements it for the letter in t.

// The calculation s.codeUnitAt(i) - 97 converts a character (like 'a') into its alphabet index (0–25).

// After the loop, if all values in freq are zero, it means both strings used the same letters equally — hence an anagram.