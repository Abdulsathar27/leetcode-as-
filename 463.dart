class Solution {
  int islandPerimeter(List<List<int>> grid) {
    int islands = 0;
    int neighbors = 0;

    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[0].length; j++) {
        if (grid[i][j] == 1) {
          islands++;
          if (i - 1 >= 0 && grid[i - 1][j] == 1) {
            neighbors++;
          }
          if (j - 1 >= 0 && grid[i][j - 1] == 1) {
            neighbors++;
          }
        }
      }
    }

    return islands * 4 - neighbors * 2;
  }
}

void main() {
  Solution s = Solution();
  print(s.islandPerimeter([
    [0, 1, 0, 0],
    [1, 1, 1, 0],
    [0, 1, 0, 0],
    [1, 1, 0, 0],
  ])); // 16
}

// This Dart program calculates the perimeter of an island in a grid by counting land cells and their shared edges. 
// Each land cell (1) initially contributes four sides to the perimeter,
// so the variable islands counts how many land cells exist. As the grid is scanned,
// the program checks only the top and left neighbors of each land cell to find shared edges with adjacent land cells,
// incrementing the neighbors count whenever such a shared side is found.
// Each shared edge reduces the total perimeter by two because 
// it is counted once for each of the two touching cells. At the end, 
// the formula islands * 4 - neighbors * 2 correctly computes the total island perimeter.
// For the given grid, this logic results in a perimeter value of 16.