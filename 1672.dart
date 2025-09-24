import 'dart:math';

class Solution {
  int maximumWealth(List<List<int>> accounts) {
    int maxWealth = 0;

    for (var customer in accounts) {
      int wealth = 0;
      for (var money in customer) {
        wealth += money;
      }
      maxWealth = max(maxWealth, wealth);
    }

    return maxWealth;
  }
}

void main() {
  var sol = Solution();
  print(sol.maximumWealth([[1,2,3],[3,2,1]]));
  print(sol.maximumWealth([[1,5],[7,3],[3,5]])); 
}


// This Dart code calculates the maximum wealth among a list of customers,
// where each customer's wealth is the sum of all their bank account balances.
// The maximumWealth method initializes maxWealth to zero.
// It then uses nested loops to iterate through each customer's list of accounts.
// For each customer, it sums up their wealth and then uses 
// the max function to update maxWealth if the current customer's
// total wealth is greater.
// Finally, the total maximum wealth found is returned.