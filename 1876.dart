class Solution {
  int countGoodSubstrings(String s) {
    int ans = 0;

    for (int i = 0; i + 2 < s.length; i++) {
      String a = s[i];
      String b = s[i + 1];
      String c = s[i + 2];

      if (a == b || a == c || b == c) {
        continue;
      }

      ans++;
    }

    return ans;
  }
}
void main() {
  Solution sol = Solution();
  print(sol.countGoodSubstrings("xyzzaz"));   
  print(sol.countGoodSubstrings("aababcabc")); 
}