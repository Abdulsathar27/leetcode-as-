class Solution {
  int sumOfSquares(List<int> nums) {
    int n = nums.length;
    int answers = 0;
    for (int i = 0; i < n; i++) {
      if (n % (i + 1) == 0) {
        answers += nums[i] * nums[i];
      }
    }
    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.sumOfSquares([1, 2, 3, 4]));
}

// This Dart program calculates the sum of the squares of certain elements in a list based on their position.
// Inside the sumOfSquares function, it first gets the total number of elements n, then loops through each index i.
// For every index, it checks if (n % (i + 1) == 0) — meaning the length of the list is divisible by the position number (i + 1).
// If that condition is true, it squares the element at that position (nums[i] * nums[i]) and adds it to the total answers.
// Finally, it returns the sum. For example, with the input [1, 2, 3, 4], the length n = 4, and the divisible indices are 1, 2, and 4
// (positions 0, 1, and 3 in zero-based index), so the result is 1² + 2² + 4² = 21.