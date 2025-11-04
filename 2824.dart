class Solution {
  int countPairs(List<int> nums, int target) {
    int answers = 0;
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] < target) {
          answers++;
        }
      }
    }
    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.countPairs([1, 2, 3, 4, 5], 7));
}

// This Dart program counts how many pairs of numbers in a list have a sum less than a given target value. 
// Inside the countPairs function, two nested loops are used: the outer loop picks one number,
// and the inner loop compares it with every number that comes after it.
// For each pair (nums[i], nums[j]), the program checks whether their sum is smaller than target;
// if it is, the counter answers increases by one. After checking all pairs, the total count is returned.
// For example, with the input [1, 2, 3, 4, 5] and target = 7,
// the valid pairs are (1,2), (1,3), (1,4), (1,5), (2,3), and (2,4) — making the output 6.