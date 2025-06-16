import 'dart:math';  

class Solution {
  int lengthOfLongestSubstring(String s) {
    int answer = 0;
    List<int> count = List.filled(128, 0); 
    int i = 0;

    for (int j = 0; j < s.length; j++) {
      count[s.codeUnitAt(j)]++; 

      while (count[s.codeUnitAt(j)] > 1) {
        count[s.codeUnitAt(i)]--;
        i++;
      }

      answer = max(answer, j - i + 1);
    }

    return answer;
  }
}
void main() {
  var solution = Solution();
  print(solution.lengthOfLongestSubstring("abcabcbb")); 
}
// This Dart code implements a sliding window approach to find the length of the longest substring without repeating characters. 
// It uses a count array to keep track of character frequencies within the current window, defined by pointers i (start) and j (end). 
// As the window expands by incrementing j, if a character at s[j] is already present (its count becomes greater than 1), 
// the window shrinks from the left by incrementing i and decrementing the count of s[i] until the duplicate is removed.
// At each step, the answer is updated with the maximum length of the valid (no repeating characters) substring found so far, calculated as j−i+1.
