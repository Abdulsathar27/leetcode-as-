class Solution {
  int numIdenticalPairs(List<int> nums) {
    int answers = 0;
    List<int> count = List.filled(101, 0);

    for (var num in nums) {
      answers += count[num]++;
    }

    return answers;
  }
}

void main() {
  Solution solution = Solution();

  List<int> nums = [1, 2, 3, 1, 1, 3];
  int result = solution.numIdenticalPairs(nums);

  print("Input: $nums");
  print("Number of good pairs: $result");
}
// This Dart code counts the number of "good pairs" in a list of integers,
// where a good pair (i, j) is defined by nums[i] == nums[j] and i < j.
// The numIdenticalPairs method uses a frequency counting approach:
// it initializes an answers variable to zero and a count list (acting as a frequency map for numbers up to 100).
// It then iterates through the input nums list. For each num,
// it adds the current count of num (which represents how many times num has appeared before the current instance) to answers,
// and then increments the count for that num. This way, each time a duplicate is found, it forms a good pair with all its previous occurrences.