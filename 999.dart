class Solution {
  int numRookCaptures(List<List<String>> board) {
    int ans = 0;
    int i0 = 0;
    int j0 = 0;

    // Find the rook position
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        if (board[i][j] == 'R') {
          i0 = i;
          j0 = j;
        }
      }
    }

    List<List<int>> directions = [
      [1, 0],   // down
      [0, 1],   // right
      [-1, 0],  // up
      [0, -1],  // left
    ];

    for (List<int> d in directions) {
      int i = i0 + d[0];
      int j = j0 + d[1];

      while (i >= 0 && i < 8 && j >= 0 && j < 8) {
        if (board[i][j] == 'p') {
          ans++;
        }

        if (board[i][j] != '.') {
          break;
        }

        i += d[0];
        j += d[1];
      }
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  List<List<String>> board = [
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", "p", ".", ".", ".", "."],
    [".", ".", ".", "R", ".", ".", ".", "p"],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", "p", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", "."],
  ];

  print(sol.numRookCaptures(board)); // 3
}