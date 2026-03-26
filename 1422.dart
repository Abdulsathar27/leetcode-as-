class Solution {
  int maxScore(String s) {
    int ans = 0;
    int zeros = 0;

    int ones = 0;
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '1') {
        ones++;
      }
    }

    for (int i = 0; i + 1 < s.length; i++) {
      if (s[i] == '0') {
        zeros++;
      } else {
        ones--;
      }

      ans = ans > (zeros + ones) ? ans : (zeros + ones);
    }

    return ans;
  }
}
void main() {
  Solution sol = Solution();

  print(sol.maxScore("011101"));   
  print(sol.maxScore("00111"));    
  print(sol.maxScore("1111"));    
}