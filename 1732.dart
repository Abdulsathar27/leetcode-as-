import 'dart:math';

class Solution {
  int largestAltitude(List<int> gain) {
    int maxAl = 0;
    int currentAl = 0;

    for (int i = 0; i < gain.length; i++) {
      currentAl += gain[i];
      maxAl = max(maxAl, currentAl);
    }

    return maxAl;
  }
}

void main() {
  var sol = Solution();
  print(sol.largestAltitude([-5,1,5,0,-7]));
  print(sol.largestAltitude([-4,-3,-2,-1,4,3,2])); 
}


// This Dart code calculates the largest altitude reached during a trip, 
// starting from an altitude of 0.

// The largestAltitude method iterates through the gain list,
// where each element represents the net change in altitude from the previous point.
// It maintains two variables: currentAl tracks the altitude at the current point,
// and maxAl stores the highest altitude recorded so far. In each iteration,
// it updates currentAl by adding the current gain and then updates maxAl to be the maximum of its
// current value and the new currentAl. Since the starting altitude is 0,
// the initial maxAl is set to 0. The function returns the final maxAl.