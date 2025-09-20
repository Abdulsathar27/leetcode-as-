class Solution {
  int numberOfSteps(int num) {
    int count = 0;

    while (num != 0) {
      num = (num % 2 == 0) ? num ~/ 2 : num - 1;
      count++;
    }

    return count;
  }
}

void main() {
  var sol = Solution();
  print(sol.numberOfSteps(14));
  print(sol.numberOfSteps(8)); 
  print(sol.numberOfSteps(123)); 
}

// This Dart code calculates the number of steps required to reduce a non-negative
// integer num to zero. The rules are simple: if num is even, you divide it by 2;
// otherwise, you subtract 1 from it.
// The numberOfSteps method uses a while loop that continues as long as num is not zero.
// Inside the loop,
// it checks if num is even or odd and performs the corresponding operation,
// incrementing a count variable for each step. The final value of count is the result.