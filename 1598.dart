class Solution {
  int minOperations(List<String> logs) {
    int ans = 0;

    for (String log in logs) {
      if (log == "./") {
        continue;
      } else if (log == "../") {
        ans = ans > 0 ? ans - 1 : 0;
      } else {
        ans++;
      }
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.minOperations(["d1/", "d2/", "../", "d21/", "./"])); 
}

// This Dart program simulates navigating through directories based on a list of log operations and calculates the final depth level.
// It uses a counter ans to represent the current directory depth, starting at zero.
// When the log is "./", it means stay in the same directory, so nothing changes. 
// If the log is "../", the program moves up one directory by decreasing the counter,
// but it ensures the value never goes below zero. For any other log (like "d1/"),
// it represents moving into a new directory, so the counter is increased by one,
// and the final value of the counter is returned as the result.