class Solution {
  int findMiddleIndex(List<int> nums) {
    int sum = 0;
    int sum1 = 0;
    int n = nums.length;
    for (var i in nums) {
      sum += i;
    }
    for (int i = 0; i < n; i++) {
      if (sum1 == sum - sum1 - nums[i]) {
        return i;
      }
      sum1 += nums[i];
    }

    return -1;
  }
}

void main() {
  var sol = Solution();
  print(sol.findMiddleIndex([2, 3, -1, 8, 4])); 
}


// This Dart code finds a "middle index" in a list of integers,
// where the sum of elements to the left of the index equals the sum of elements to its right.
// The findMiddleIndex method first calculates the total sum of all elements. 
// It then iterates through the list, maintaining a sum1 that represents the left sum up to the current index.
// In each step, it checks if sum1 is equal to the total sum minus the left sum and the current element (sum - sum1 - nums[i]). 
// If this condition is met, it returns the current index. If no such index is found after iterating through the entire list, it returns -1.