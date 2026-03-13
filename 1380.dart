class Solution {
  List<int> luckyNumbers(List<List<int>> matrix) {
    for (List<int> row in matrix) {
      int minIndex = 0;

      for (int i = 1; i < row.length; i++) {
        if (row[i] < row[minIndex]) {
          minIndex = i;
        }
      }

      if (row[minIndex] == maxNumOfColumn(matrix, minIndex)) {
        return [row[minIndex]];
      }
    }

    return [];
  }

  int maxNumOfColumn(List<List<int>> matrix, int j) {
    int res = 0;

    for (int i = 0; i < matrix.length; i++) {
      if (matrix[i][j] > res) {
        res = matrix[i][j];
      }
    }

    return res;
  }
}

void main() {
  Solution sol = Solution();

  List<List<int>> matrix = [
    [3, 7, 8],
    [9, 11, 13],
    [15, 16, 17]
  ];

  print(sol.luckyNumbers(matrix));  
}