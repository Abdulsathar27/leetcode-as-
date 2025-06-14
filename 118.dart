class Solution {
  List<List<int>> generate(int numRows) {
    List<List<int>> answers = [];

    for (var i = 0; i < numRows; i++) {
   
      List<int> row = List.filled(i + 1, 1);

     
      for (var j = 1; j < i; j++) {
        row[j] = answers[i - 1][j - 1] + answers[i - 1][j];
      }

      answers.add(row);
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  int numRows = 5;
  List<List<int>> result = s.generate(numRows);

  // Print Pascal's Triangle
  for (var row in result) {
    print(row);
  }
}

// The provided Dart code implements a solution to generate Pascal's Triangle up to a specified number of rows. It initializes an empty list of lists to store the triangle.
// The code then iterates from 0 up to numRows - 1, creating each row of the triangle. For each row, it initializes a list of integers with all values set to 1, as the first and last elements of every row in Pascal's Triangle are always 1.
// The core logic lies in calculating the inner elements of the row: each element is the sum of the two elements directly above it from the previous row. Finally,
// the newly generated row is added to the answers list, and the complete Pascal's Triangle is returned and then printed in the main function.
