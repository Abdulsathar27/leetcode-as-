import 'dart:math';

class Solution {
  int maxWidthOfVerticalArea(List<List<int>> points) {
    int answer = 0;
    List<int> ab = [];

    
    for (var point in points) {
      ab.add(point[0]);
    }

    ab.sort();

    
    for (int i = 1; i < ab.length; i++) {
      answer = max(answer, ab[i] - ab[i - 1]);
    }

    return answer;
  }
}

void main() {
  var sol = Solution();
  print(sol.maxWidthOfVerticalArea([
    [8, 7],
    [9, 9],
    [7, 4],
    [9, 7]
  ])); 
  
}

// This Dart code calculates the maximum width of a vertical area between points. 
// It first extracts all the x-coordinates from the given points list into a new list called ab. 
// Then, it sorts ab in ascending order. Finally, it iterates through the sorted x-coordinates,
// calculating the difference between consecutive elements and updating answer to store the maximum difference found, 
// which represents the widest vertical gap.