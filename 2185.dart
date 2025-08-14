class Solution {
  int prefixCount(List<String> words, String pref) {
    return words.where((word) => word.startsWith(pref)).length;
  }
}
void main() {
  final sol = Solution();
  
  print(sol.prefixCount(["pay", "attention", "practice", "attend"], "at")); 
  print(sol.prefixCount(["leetcode", "win", "loops", "success"], "code")); 
}

// This Dart code counts how many strings in a list words start with a given prefix pref.
// The prefixCount method uses a concise and functional approach.
// It utilizes the where method to create an iterable of only the words that satisfy the condition word.
// startsWith(pref).
// Finally, it returns the length of this resulting iterable,
// which represents the total count of words with the specified prefix.