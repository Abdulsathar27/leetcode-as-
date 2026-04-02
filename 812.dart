import 'dart:math';

class Solution {
  double largestTriangleArea(List<List<int>> points) {
    double ans = 0;

    for (var A in points) {
      for (var B in points) {
        for (var C in points) {
          double area =
              0.5 *
              ((B[0] - A[0]) * (C[1] - A[1]) - (C[0] - A[0]) * (B[1] - A[1]))
                  .abs();

          ans = max(ans, area);
        }
      }
    }

    return ans;
  }
}
void main() {
  Solution sol = Solution();

  List<List<int>> points = [
    [0, 0],
    [0, 1],
    [1, 0],
    [0, 2],
    [2, 0]
  ];

  print(sol.largestTriangleArea(points)); 
}