import 'dart:math';

class Solution {
  List<int> leftRightDifference(List<int> nums) {
    int n = nums.length;
    List<int> lsum = List.filled(n, 0);
    List<int> rsum = List.filled(n, 0);
    List<int> answers = List.filled(n, 0);

    for (int i = 1; i < n; i++) {
      lsum[i] = lsum[i - 1] + nums[i - 1];
    }

    for (int i = n - 2; i >= 0; i--) {
      rsum[i] = rsum[i + 1] + nums[i + 1];
    }

    for (int i = 0; i < n; i++) {
      answers[i] = (lsum[i] - rsum[i]).abs();
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.leftRightDifference([10, 4, 8, 3]));
}

// This Dart program calculates the absolute difference between the sum of elements 
// on the left and the right sides of each index in a list. 
// Inside the leftRightDifference function, 
// three lists (lsum, rsum, and answers) are created to store the left sums,
// right sums, and the final results. The first loop fills the lsum list by 
// adding elements that come before each index, while the second loop fills 
// the rsum list by adding elements that come after each index. Then, for every 
// position, it finds the absolute difference between lsum[i] and rsum[i] using 
// .abs() and stores it in answers. For the input [10, 4, 8, 3], the output is [15, 1, 11, 22],
//  showing the balance difference of left and right sums at every index.