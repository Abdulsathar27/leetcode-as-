import 'dart:math';

class Solution {
  int findMaxConsecutiveOnes(List<int> nums) {
    int answer = 0;
    int count = 0;

    for (int num in nums) {
      if (num == 1) {
        count++;
        answer = max(answer, count);
      } else {
        count = 0;
      }
    }

    return answer;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.findMaxConsecutiveOnes([1,1,0,1,1,1])); // 3
  print(sol.findMaxConsecutiveOnes([1,0,1,1,0,1])); // 2
}