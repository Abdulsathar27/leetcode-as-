class Solution {
  int finalPositionOfSnake(int n, List<String> commands) {
    int x = 0, y = 0;

    for (int i = 0; i < commands.length; i++) {
      String s = commands[i];

      if (s == "UP") {
        x--;
      } else if (s == "DOWN") {
        x++;
      } else if (s == "RIGHT") {
        y++;
      } else if (s == "LEFT") {
        y--;
      }
    }

    return x * n + y;
  }
}


void main() {
  Solution s = Solution();
  print(s.finalPositionOfSnake(4, ["RIGHT", "DOWN", "DOWN"])); // 6
}


// This Dart program computes the final position of a snake on an n × n grid after executing a sequence of movement commands.
// The snake starts at position (0, 0), where x represents the row and y represents the column. 
// As the program loops through each command, it updates the coordinates by moving up, down, left, or right based on the instruction.
// After all movements are processed, the two-dimensional position is converted into a single index using 
// the formula x * n + y, which is how positions are commonly flattened in a grid. For example,
// with n = 4 and commands ["RIGHT", "DOWN", "DOWN"], the snake ends at (2, 1), which converts to index 6.