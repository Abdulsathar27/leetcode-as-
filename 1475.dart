class Solution {
  List<int> finalPrices(List<int> prices) {
    List<int> ans = List.from(prices); 
    List<int> stack = [];

    for (int j = 0; j < prices.length; j++) {
      while (stack.isNotEmpty && prices[j] <= prices[stack.last]) {
        ans[stack.last] -= prices[j];
        stack.removeLast();
      }
      stack.add(j);
    }

    return ans;
  }
}
void main() {
  var sol = Solution();
  print(sol.finalPrices([8, 4, 6, 2, 3])); 
}

// This Dart code calculates "final prices" for a given list of prices, where the discount for an item is the price of 
// the first item to its right that is less than or equal to it.
// It initializes an ans list as a copy of prices and uses a stack to keep track of indices of prices encountered so far in decreasing order. 
// As it iterates through prices, if the current price prices[j] is less than or equal to the price at the top of the stack, 
// it applies the discount to the ans list for the item represented by the top of the stack and pops it. 
// The current index j is then pushed onto the stack.