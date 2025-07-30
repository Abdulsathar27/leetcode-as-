class Solution {
  List<int> buildArray(List<int> nums) {
    var answers = nums.length;

    for (var i = 0; i < answers; i++) {
      nums[i] += answers * (nums[nums[i]] % answers);
    }

    for (var j = 0; j < answers; j++) {
      nums[j] ~/= answers;
    }

    return nums;
  }
}

void main() {
  Solution solution = Solution();

  List<int> input = [0, 2, 1, 5, 3, 4];
  List<int> result = solution.buildArray(input);

  print("Input: [0, 2, 1, 5, 3, 4]");
  print("Output: $result");
}

// This Dart code implements an in-place algorithm to build a new array ans where ans[i] = nums[nums[i]],
// without using extra space beyond the input array.
// It leverages properties of modular arithmetic: In the first loop,
// for each element nums[i], it encodes the target value nums[nums[i]] 
// into nums[i] by adding n * (nums[nums[i]] % n), where n is the array length.
// This clever trick stores both the original value and the target value within the same element. 
// In the second loop, it then decodes the target value by performing integer division ~/= n on each element,
// effectively extracting the nums[nums[i]] value.
