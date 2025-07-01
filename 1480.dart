class Solution {
  void runningSum(List<int> nums) {
    List<int> answer = [];
    int sum = 0;

    for (var num in nums) {
      sum += num;
      answer.add(sum);
    }

    print(answer);
  }
}
void main() {
  var sol = Solution();
  sol.runningSum([1, 2, 3, 4]);  
}

// This Dart code calculates the running sum of a given list of integers. 
// The runningSum method initializes an empty answer list and a sum variable to zero.
// It then iterates through each number in the input nums list, incrementally adding the current number to sum.
// After each addition, the updated sum is appended to the answer list. Finally, the method prints the answer list, 
// which contains the running sums.