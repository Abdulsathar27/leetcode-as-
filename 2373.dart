import 'dart:math';

class Solution {
  List<List<int>> largestLocal(List<List<int>> grid) {
    int n = grid.length;
    List<List<int>> answers = List.generate(n - 2, (_) => List.filled(n - 2, 0));
    for (int i = 0; i < n - 2; i++) {
      for (int j = 0; j < n - 2; j++) {
        for (int x = i; x < i + 3; x++) {
          for (int y = j; y < j + 3; y++) {
            answers[i][j] = max(answers[i][j], grid[x][y]);
          }
        }
      }
    }
    return answers;
  }
}

void main() {
  var sol = Solution();
  var grid = [
    [9, 9, 8, 1],
    [5, 6, 2, 6],
    [8, 2, 6, 4],
    [6, 2, 2, 2]
  ];

  print(sol.largestLocal(grid));
  
}

// This Dart code defines a function largestLocal that computes the largest local value for every 3×3 subgrid within 
// a larger n×n integer matrix, or grid. The result is a new matrix of size (n−2)×(n−2).

// Logic Explained
// Initialization:

// The size of the input grid, n, is determined.

// The result matrix, answers, is initialized. Since a 3×3 subgrid can only be centered up to two rows/columns from 
// the edges, the resulting matrix will have dimensions (n−2)×(n−2). All elements are initially set to 0.

// Iterating through the Result Matrix:

// The outer two loops, using indices i and j, iterate over every cell in the result matrix (answers).
// These indices represent the top-left corner of the 3×3 subgrid in the original grid that is currently being processed. 
// The range for both i and j is from 0 to n−3, covering all possible starting positions.

// Finding the Maximum in the 3×3 Subgrid:

// The inner two loops, using indices x and y, iterate over the 3×3 subgrid defined by the current position (i,j):

// x iterates from i to i+2.

// y iterates from j to j+2.

// In each step of the inner loops, the value of the current cell in the original grid, grid[x][y], is compared with 
// the current maximum value stored in answers[i][j]. The max function updates answers[i][j] to the larger of the two.

// By the time the inner loops complete, answers[i][j] holds the largest element from the 3×3 subgrid of grid that starts at (i,j). 
// The process repeats until all (n−2)×(n−2) subgrids have been processed.