class Solution {
  bool arrayStringsAreEqual(List<String> word1, List<String> word2) {
    String s1 = word1.join('');
    String s2 = word2.join('');
    return s1 == s2;
  }
}

void main() {
  var sol = Solution();
  print(sol.arrayStringsAreEqual(["ab", "c"], ["a", "bc"])); 
  print(sol.arrayStringsAreEqual(["a", "cb"], ["ab", "c"])); 
  print(sol.arrayStringsAreEqual(["abc", "d", "defg"], ["abcddefg"])); 
}

// This Dart code determines whether two lists of strings are equivalent when concatenated.
// The arrayStringsAreEqual method joins all the strings in word1 
// into a single string s1 and similarly joins word2 into s2.
// It then returns true if these two resulting strings are identical,
// and false otherwise.
// This approach provides a simple and direct way to check for 
// string equality after concatenation.