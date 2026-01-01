
class Solution {
  bool rotateString(String s, String goal) {
    return s.length == goal.length && (s + s).contains(goal);
  }
}

void main() {
  Solution sol = Solution();
  print(sol.rotateString("abcde", "cdeab")); 
  print(sol.rotateString("abcde", "abced")); 
}

// This Dart program checks whether one string can be obtained by rotating another string.
// It first ensures that both strings have the same length, 
// since rotation is only possible when lengths match.
// The key idea is that any rotation of a string s will always appear as a substring inside s + s. 
// By concatenating the original string with itself and checking whether it contains the target string goal,
// the program can efficiently verify the rotation condition. If both the length check and the substring check pass,
// the function returns true; otherwise, it returns false.