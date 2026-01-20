class Solution {
  bool squareIsWhite(String coordinates) {
    int col = coordinates.codeUnitAt(0) - 'a'.codeUnitAt(0) + 1;
    int row = int.parse(coordinates[1]);
    return (col + row) % 2 == 1;
  }
}

void main() {
  Solution s = Solution();
  print(s.squareIsWhite("a1")); // false
  print(s.squareIsWhite("h3")); // true
}

// This Dart program determines whether a given chessboard square is white based on its coordinates.
// It converts the column letter into a numeric value by mapping `'a'` to `1`, `'b'` to `2`, and so on,
// while the row is obtained by parsing the digit in the coordinate. 
// On a standard chessboard, the color of a square depends on the sum of its row and column positions. 
// If the sum is odd, the square is white; if it is even, the square is black. Using this simple rule, 
// the function returns `true` for white squares and `false` for black ones.
