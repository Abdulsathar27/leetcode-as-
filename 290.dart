class Solution {
  bool wordPattern(String pattern, String str) {
    List<String> words = str.split(' ');
    if (words.length != pattern.length) return false;

    Map<String, int> w2i = {};
    Map<String, int> p2i = {};

    for (int i = 0; i < pattern.length; i++) {
      String p = pattern[i];
      String w = words[i];

      if (p2i[p] != w2i[w]) return false;

      p2i[p] = i + 1;
      w2i[w] = i + 1;
    }

    return true;
  }
}

void main() {
  Solution s = Solution();
  print(s.wordPattern("abba", "dog cat cat dog")); // true
}

// This Dart program checks if a given string follows a specific pattern, where each letter in the pattern uniquely
// maps to a word in the string — similar to the concept of a one-to-one correspondence.

// Inside the wordPattern function:

// The input string is split into individual words using split(' ').

// If the number of words doesn’t match the pattern’s length, it immediately returns false.

// Two maps are created: p2i for pattern letters and w2i for words — both record the index (using i + 1 to avoid default zero values).

// As the loop runs through each position, it checks whether the last-seen indices of the current pattern letter and word are the same. 
// If not, the mapping is inconsistent, and it returns false.

// If the loop finishes without mismatches, the function returns true.