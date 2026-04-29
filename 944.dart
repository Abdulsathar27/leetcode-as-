class Solution {
  int minDeletionSize(List<String> strs) {
    int answer = 0;

    for (int j = 0; j < strs[0].length; j++) {
      for (int i = 0; i + 1 < strs.length; i++) {
        if (strs[i][j].compareTo(strs[i + 1][j]) > 0) {
          answer++;
          break;
        }
      }
    }

    return answer;
  }
}
void main() {
  Solution sol = Solution();

  print(sol.minDeletionSize(["cba", "daf", "ghi"])); // 1
  print(sol.minDeletionSize(["a", "b"]));           // 0
  print(sol.minDeletionSize(["zyx", "wvu", "tsr"])); // 3
}