class Solution {
  List<int> smallerNumbersThanCurrent(List<int> nums) {
    List<int> count = List.filled(101, 0); 

    for (var num in nums) {
      count[num]++;
    }
    for (var i = 1; i < 101; i++) {
      count[i] += count[i - 1];
    }
    List<int> result = [];
    for (var num in nums) {
      if (num == 0) {
        result.add(0);
      } else {
        result.add(count[num - 1]);
      }
    }

    return result;
  }
}

void main() {
  Solution sol = Solution();
  List<int> input = [8, 1, 2, 2, 3];
  List<int> output = sol.smallerNumbersThanCurrent(input);
  print(output);
}
