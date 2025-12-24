class Solution {
  int distributeCandies(List<int> candies) {
    Set<int> unique = {};

    for (int candy in candies) {
      unique.add(candy);
    }

    return unique.length < candies.length ~/ 2
        ? unique.length
        : candies.length ~/ 2;
  }
}

void main() {
  Solution s = Solution();
  print(s.distributeCandies([1, 1, 2, 2, 3, 3])); // 3
  print(s.distributeCandies([1, 1, 2, 3]));       // 2
}


// This Dart program determines the maximum number of different candy types one person can receive 
// when candies are split evenly between two people.
// It first uses a Set to collect all unique candy types, since a set automatically removes duplicates. 
// The total number of candies that one person can get is half of the array length (candies.length ~/ 2).
// If the number of unique candy types is smaller than this limit, the person can only receive as many unique types as exist;
// otherwise, they can receive exactly half the candies with all types being different.
// The return statement neatly handles both cases using a conditional expression.
// This ensures the result always represents the maximum possible variety of candies one person can get.
