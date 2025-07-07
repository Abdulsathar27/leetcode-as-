class Solution {
  int diagonalSum(List<List<int>> mat) {
    var n = mat.length;
    var answer = 0; 
for (var i = 0; i < n ; i++){
    answer += mat [i][i];
    answer += mat[n-1-i][i];
}
return n%2 == 0? answer : answer - mat[n~/2][n~/2];
  }
}
void main() {
  var sol = Solution();
  sol.diagonalSum([
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ]);
  
}

// This Dart code calculates the sum of elements on the primary and secondary diagonals of a square matrix.
// It initializes answer to zero and iterates from i = 0 to n-1 (where n is the matrix size).
// In each iteration, it adds the element mat[i][i] (primary diagonal) and mat[n-1-i][i] (secondary diagonal) to answer. 
// Finally, if the matrix dimension n is odd, it subtracts the middle element mat[n~/2][n~/2] from answer to avoid double-counting it,
// returning the correct diagonal sum.