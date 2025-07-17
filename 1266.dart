class Solution {
  int minTimeToVisitAllPoints(List<List<int>> points) {
    int ans = 0;

    for (int i = 1; i < points.length; i++) {
      int dx = (points[i][0] - points[i - 1][0]).abs();
      int dy = (points[i][1] - points[i - 1][1]).abs();
      ans += dx > dy ? dx : dy;
    }

    return ans;
  }
}
void main() {
  var sol = Solution();
  print(sol.minTimeToVisitAllPoints([
    [1, 1],
    [3, 4],
    [-1, 0]
  ])); 
}
// This Dart code calculates the minimum time to visit a sequence of points on a 2D plane.
// The minTimeToVisitAllPoints method iterates through the points list,
// considering each pair of consecutive points.
// For each pair, it calculates the absolute difference in their x-coordinates (dx) and y-coordinates (dy).
// The time required to travel between two points is the maximum of dx and dy (representing diagonal movement combined with straight movement).
// These individual travel times are accumulated in ans, and the total minimum time is returned.
