class Solution {
  int lastStoneWeight(List<int> stones) {
    // Sort initially
    stones.sort();

    while (stones.length > 1) {
      // Take two largest elements
      int n1 = stones.removeLast(); // largest
      int n2 = stones.removeLast(); // second largest

      if (n1 != n2) {
        stones.add(n1 - n2);
        stones.sort(); // re-sort after adding
      }
    }

    return stones.isEmpty ? 0 : stones[0];
  }
}

void main() {
  Solution sol = Solution();

  print(sol.lastStoneWeight([2,7,4,1,8,1])); 
}

