class Solution {
  int numJewelsInStones(String jewels, String stones) {
    final jewelSet = jewels.runes.toSet();
    return stones.runes.where(jewelSet.contains).length;
  }
}

void main() {
  var solution = Solution();
  String jewels = "aA";
  String stones = "aAAbbbb";
  int result = solution.numJewelsInStones(jewels, stones);
  print("Number of jewels in stones: $result");
}
// This Dart code efficiently counts how many characters in stones are also found in jewels. 
// It first converts the jewels string into a Set of Unicode characters (jewelSet) for extremely fast lookups. 
// Then, it iterates through each character in stones, checking if it exists within the jewelSet. Finally, 
// it returns the total count of characters from stones that were identified as jewels.
