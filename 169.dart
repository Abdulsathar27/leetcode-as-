class Solution {
  int majorityElement(List<int> nums) {
    int candidate = 0;
    int count = 0;

    for (var num in nums) {
      if (count == 0) {
        candidate = num;
      }

      count += (num == candidate) ? 1 : -1;
    }

    return candidate;
  }
}

void main() {
  Solution s = Solution();
  print(s.majorityElement([6, 5, 5])); // 5
}

// This Dart program uses the Boyer–Moore Majority Vote Algorithm to find the element that appears more than half the time in a list.
// It keeps track of a candidate (called answers here) and a count. As it loops through each number in the list, if count is 0,
// it assumes the current number might be the majority and assigns it to answers. For every number, if it matches answers,
// the count increases; otherwise, it decreases. This clever balancing ensures that the final answers value represents the element that appears
// the most in the list.