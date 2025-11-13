class Solution {
  List<int> findMissingAndRepeatedValues(List<List<int>> grid) {
    int nums1 = grid.length;
    int nums2 = nums1 * nums1;

    List<int> adding = List.filled(nums2 + 1, 0);
    int repeated = -1;
    int missing = -1;

    for (var row in grid) {
      for (var v in row) {
        adding[v]++;
        if (adding[v] == 2) {
          repeated = v;
        }
      }
    }

    for (int i = 1; i <= nums2; i++) {
      if (adding[i] == 0) {
        missing = i;
        break;
      }
    }

    return [repeated, missing];
  }
}

void main() {
  Solution s = Solution();
  print(s.findMissingAndRepeatedValues([
    [1, 3],
    [2, 2]
  ])); 
}

// This Dart program finds two special numbers in a square grid: one number that is repeated and one that is missing. 
// In the findMissingAndRepeatedValues function, the grid size is determined using grid.length,
// and since the grid is n × n, the total number of expected values is n * n.
// A list named adding is created to count how many times each number appears.
// The program then loops through every element in the grid, increasing its count in the adding list.
// If a number appears twice, it’s marked as the repeated value.
// After that, another loop checks which number from 1 to n² has a count of 0, meaning it’s the missing value.
// Finally, the function returns both numbers in a list.
// For example, in the grid [[1, 3], [2, 2]], the number 2 repeats, and 4 is missing, so the output is [2, 4].