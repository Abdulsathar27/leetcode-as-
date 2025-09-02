import 'dart:math';

class Solution {
  int maximumDifference(List<int> nums) {
    var answers = -1;
    for (var i = 0; i < nums.length - 1; i++) {
      for (var j = i + 1; j < nums.length; j++) { 
        if (nums[i] < nums[j]) {
          answers = max(answers, nums[j] - nums[i]);
        }
      }
    }
    return answers;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.maximumDifference([7, 1, 5, 4]));
  print(sol.maximumDifference([9, 4, 3, 2]));
  print(sol.maximumDifference([1, 5, 2, 10]));
}

// This Dart code calculates the maximum difference between two numbers in a list,
// where the second number appears after the first one and is larger.
// The maximumDifference method uses two nested loops to compare every possible pair of elements (nums[i], nums[j]) 
// where i comes before j.
// It checks if nums[i] is less than nums[j] and,
// if so, updates answers to be the maximum of its current value and the newly calculated difference. 
// If no such pair is found, answers remains at its initial value of -1.