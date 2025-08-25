class Solution {
  int countQuadruplets(List<int> nums) {
    int counts = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        for (int k = j + 1; k < nums.length; k++) {
          for (int l = k + 1; l < nums.length; l++) {
            if (nums[i] + nums[j] + nums[k] == nums[l]) {
              counts += 1;
            }
          }
        }
      }
    }
    return counts;
  }
}

void main() {
  var sol = Solution();
  print(sol.countQuadruplets([1, 2, 3, 6]));          
  print(sol.countQuadruplets([3, 3, 6, 4, 5]));       
  print(sol.countQuadruplets([1, 1, 1, 3, 5]));       
}

// This Dart code counts the number of quadruplets (i, j, k, l) in a list of integers nums that satisfy the condition nums[i] + nums[j] + nums[k] == nums[l], where i < j < k < l.
// The countQuadruplets method uses four nested loops to iterate through all possible combinations of four distinct indices. 
// For each combination, it checks if the sum of the elements at the first three indices equals the element at the fourth index. 
// If the condition is met, it increments a counter, and the final count is returned.