class Solution {
  int maxProfit(List<int> prices) {
    int buyPrice = prices[0];
    int profit = 0;

    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < buyPrice) {
        buyPrice = prices[i];
      }
      profit = profit > (prices[i] - buyPrice)
          ? profit
          : (prices[i] - buyPrice);
    }

    return profit;
  }
}

void main() {
  Solution s = Solution();
  print(s.maxProfit([2,1,2,1,0,1,2])); 
}

// This Dart program finds the maximum profit you can make by buying and selling a stock once,
// given a list of prices where each element represents the stock price on a specific day.
// The variable buyPrice keeps track of the lowest price so far (best day to buy), and 
// profit stores the highest profit possible up to that point. As the loop goes through each day’s price,
// if the current price is lower than the buyPrice, it updates buyPrice to this new minimum.
// Then, it calculates the potential profit by subtracting buyPrice from the current price and compares it with the current profit, 
// keeping the maximum of the two. Finally, it returns the highest profit found.
// For example, with prices [2, 1, 2, 1, 0, 1, 2], the best strategy is to buy at 0 and sell at 2, giving a profit of 2.