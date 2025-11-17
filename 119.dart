class Solution {
  List<int> getRow(int rowIndex) {
    List<int> ans = List.filled(rowIndex + 1, 1);

    for (int i = 2; i <= rowIndex; i++) {
      for (int j = 1; j < i; j++) {
        ans[i - j] += ans[i - j - 1];
      }
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.getRow(3)); 
}


// This Dart program generates a specific row of Pascal’s Triangle based on the given rowIndex.
// In Pascal’s Triangle, each number is the sum of the two numbers directly above
// it in the previous row. 
// The function getRow starts by creating a list ans filled with 1s because 
// every row in Pascal’s Triangle begins and ends with 1. Then,
// using two nested loops, it builds up the correct values for each position by adding 
// values from previous steps in reverse order to avoid overwriting data that’s still needed.
// Specifically, ans[i - j] += ans[i - j - 1] updates the elements from right to left for each row.
// For example, when rowIndex = 3, the program produces [1, 3, 3, 1], which corresponds to 
// the fourth row (index 3) of Pascal’s Triangle.