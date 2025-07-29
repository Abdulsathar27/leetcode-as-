class Solution {
  List<int> getConcatenation(List<int> nums) {
    var n = nums.length;
    for (var i = 0; i < n; i++) {
      nums.add(nums[i]);
    }
    return nums;
  }
}

void main() {
  Solution solution = Solution();

  List<int> input = [1, 2, 1];
  List<int> result = solution.getConcatenation(input);

  print("Input: $input");
  print("Output: $result");  
}

// This Dart code defines a Solution class with a getConcatenation method that effectively doubles 
// a given list of integers by appending a copy of itself. 
// The method first stores the original length of the nums list in a variable n.
// It then iterates n times, and in each iteration, it adds the element nums[i] (from the original portion of the list) to 
// the end of the nums list itself. This modifies the list in-place by appending its original elements, resulting in a concatenated list.