class Solution {
  int oddCells(int m, int n, List<List<int>> indices) {
    int ans = 0;

    // true = flipped odd times
    List<bool> rows = List.filled(m, false);
    List<bool> cols = List.filled(n, false);

    // Toggle rows and cols
    for (List<int> index in indices) {
      rows[index[0]] = !rows[index[0]];
      cols[index[1]] = !cols[index[1]];
    }

    // Count odd cells
    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        if (rows[i] ^ cols[j]) {
          ans++;
        }
      }
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.oddCells(2, 3, [
    [0, 1],
    [1, 1]
  ])); // 6

  print(sol.oddCells(2, 2, [
    [1, 1],
    [0, 0]
  ])); // 0
}