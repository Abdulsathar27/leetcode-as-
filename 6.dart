class Solution {
  String convert(String s, int numRows) {
    if (numRows == 1 || numRows >= s.length) return s;

    List<StringBuffer> rows = List.generate(numRows, (_) => StringBuffer());
    int row = 0, step = 1;

    for (var c in s.runes.map(String.fromCharCode)) {
      rows[row].write(c);
      row += step;

      if (row == 0 || row == numRows - 1) step = -step;
    }

    return rows.map((r) => r.toString()).join();
  }
}


void main() {
  var solution = Solution();
  print(solution.convert("PAYPALISHIRING", 3)); 
}
// This Dart code converts a given string into a "zigzag" pattern across a specified number of rows. 
// It initializes a list of StringBuffer objects, one for each row, and then iterates through the input string's characters. 
// A step variable dictates the direction of movement (down or up) between rows, changing direction when the first or last row is reached. 
// Each character is appended to the StringBuffer of the current row. Finally, all StringBuffer contents are joined together to form the resulting zigzag-patterned string.
