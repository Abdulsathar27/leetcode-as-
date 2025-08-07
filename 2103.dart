class Solution {
  int countPoints(String rings) {
    List<int> colors = List.filled(10, 0);

    for (int i = 0; i < rings.length; i += 2) {
      int colorBit = rings[i] == 'R'
          ? 1
          : rings[i] == 'G'
              ? 2
              : 4;

      int rod = int.parse(rings[i + 1]);
      colors[rod] |= colorBit;
    }

    return colors.where((c) => c == 7).length;
  }
}
void main() {
  final solution = Solution();

  print(solution.countPoints("B0R0G0R9G9B9")); 
}

// This Dart code counts how many rods have all three colors: red (R), green (G), and blue (B).
// It uses a list colors of size 10, where each index represents a rod.
// The code iterates through the rings string in pairs of characters,
// where the first character is a color and the second is a rod number.
// It uses a bitwise representation for colors (1 for 'R', 2 for 'G', and 4 for 'B').
// For each ring, it uses the bitwise OR assignment operator (|=) to set the corresponding color bit on the designated rod.
// Finally, it counts how many rods have a value of 7 (1 | 2 | 4), which signifies the presence of all three colors.
