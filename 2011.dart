class Solution {
  int finalValueAfterOperations(List<String> operations) {
    int x = 0;
    for (var o in operations) {
      x += (44 - o.codeUnitAt(1));
    }
    return x;
  }
}

void main() {
  Solution sol = Solution();
  List<String> operations = ["--X", "X++", "X++"];
  print(sol.finalValueAfterOperations(operations)); 
}

// This Dart code calculates the final value of a variable x after a series of increment and decrement operations.
// It initializes x to 0. Instead of using if/else statements,
// it cleverly uses the ASCII value of the middle character of each operation 
// string ('++' or '--'). The ASCII value of + is 43 and - is 45.
// The expression 44 - o.codeUnitAt(1) evaluates to +1 for X++ or ++X and -1 for X-- or --X,
// which is then added to x.
//  This provides a concise and efficient way to perform the calculations.