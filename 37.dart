class Solution {
  void solveSudoku(List<List<String>> board) {
    bool solve() {
      for (int r = 0; r < 9; r++) {
        for (int c = 0; c < 9; c++) {
          if (board[r][c] != '.') continue;

          for (int n = 1; n <= 9; n++) {
            String num = '$n';

            bool valid = true;
            for (int i = 0; i < 9; i++) {
              if (board[r][i] == num ||
                  board[i][c] == num ||
                  board[3 * (r ~/ 3) + i ~/ 3]
                      [3 * (c ~/ 3) + i % 3] == num) {
                valid = false;
                break;
              }
            }

            if (!valid) continue;

            board[r][c] = num;
            if (solve()) return true;
            board[r][c] = '.';
          }
          return false;
        }
      }
      return true;
    }

    solve();
  }
}

void main() {
  var sol = Solution();
  List<List<String>> board = [
    ["5", "3", ".", ".", "7", ".", ".", ".", "."],
    ["6", ".", ".", "1", "9", "5", ".", ".", "."],
    [".", "9", "8", ".", ".", ".", ".", "6", "."],
    ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
    ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
    ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
    [".", "6", ".", ".", ".", ".", "2", "8", "."],
    [".", ".", ".", "4", "1", "9", ".", ".", "5"],
    [".", ".", ".", ".", "8", ".", ".", "7", "9"],
  ];
  sol.solveSudoku(board);
  for (var row in board) {
    print(row.join(' '));
  }
}
