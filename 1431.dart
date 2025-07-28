class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    List<bool> answers = [];
    int maxCandy = candies.reduce((a, b) => a > b ? a : b);

    for (int candy in candies) {
      answers.add(candy + extraCandies >= maxCandy);
    }

    return answers;
  }
}
void main() {
  Solution solution = Solution();
  List<int> candies = [2, 3, 5, 1, 3];
  int extraCandies = 3;

  print(solution.kidsWithCandies(candies, extraCandies));
  
}
// This Dart code determines which kids will have the greatest number of candies after receiving extraCandies. 
// The kidsWithCandies method first calculates maxCandy, the largest number of candies any single kid currently possesses, by using the reduce function.
// It then iterates through the candies list, and for each kid's candy count, it checks if candy + extraCandies is greater than or equal to maxCandy.
// A boolean result for each kid is added to the answers list, indicating whether they would have the most candies, and this list is returned.