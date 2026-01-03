class Solution {
  int countBinarySubstrings(String s) {
    int ans = 0;
    int prevEquals = 0;
    int currEquals = 1;

    for (int i = 0; i + 1 < s.length; i++) {
      if (s[i] == s[i + 1]) {
        currEquals++;
      } else {
        ans += prevEquals < currEquals ? prevEquals : currEquals;
        prevEquals = currEquals;
        currEquals = 1;
      }
    }

    return ans + (prevEquals < currEquals ? prevEquals : currEquals);
  }
}

void main() {
  Solution s = Solution();
  print(s.countBinarySubstrings("00110011")); 
  print(s.countBinarySubstrings("10101"));    
}

// This Dart program counts the number of substrings in a binary string that have the same number of consecutive 0s and 1s,
// with all 0s grouped together and all 1s grouped together.
// It works by tracking the lengths of consecutive character groups using two variables:
// currEquals for the current group and prevEquals for the previous group.
// As the loop moves through the string, it increases currEquals when the same character continues,
// and when a change occurs, it adds the minimum of the previous and current group lengths to the answer.
// This minimum represents how many valid substrings can be formed between those two adjacent groups.
// After finishing the loop, it adds the final comparison to include the last group transition.
// For example, "00110011" results in 6 valid substrings, and "10101" results in 4.

