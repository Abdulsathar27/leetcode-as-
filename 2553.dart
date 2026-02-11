class Solution {
  List<int> separateDigits(List<int> nums) {
    List<int> answers = [];

    for (var num in nums) {
      for (var c in num.toString().split('')) {
        answers.add(c.codeUnitAt(0) - '0'.codeUnitAt(0));
      }
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.separateDigits([13, 25, 83, 77]));
}

// This Dart program separates all digits from a list of integers and returns them as a single list of individual digits.
// It loops through each number in the input list, converts the number to a string,
// and then splits it into individual character digits.
// Each character digit is converted back into its numeric value by subtracting the ASCII value of '0'.
// These digits are added one by one to the result list in the same order they appear.
// For example, given [13, 25, 83, 77], the function returns [1, 3, 2, 5, 8, 3, 7, 7].