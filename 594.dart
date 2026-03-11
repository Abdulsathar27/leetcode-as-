class Solution {
  int findLHS(List<int> nums) {
    int ans = 0;
    Map<int, int> count = {};

    for (int num in nums) {
      count[num] = (count[num] ?? 0) + 1;
    }

    for (var entry in count.entries) {
      int num = entry.key;
      int freq = entry.value;

      if (count.containsKey(num + 1)) {
        int sum = freq + count[num + 1]!;
        if (sum > ans) ans = sum;
      }
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.findLHS([1,3,2,2,5,2,3,7])); 
}


// This Dart program finds the length of the Longest Harmonious Subsequence (LHS) in a list of integers.
// A harmonious subsequence is one where the difference between its maximum and minimum values is exactly 1. 
// The program first builds a frequency map to count how many times each number appears in the list.
// Then, for each number, it checks whether the next consecutive number (num + 1) exists in the map. If it does,
// the program combines their frequencies to get the length of a possible harmonious subsequence and keeps
// track of the maximum such length. Finally, 
// it returns this maximum value, so for [1,3,2,2,5,2,3,7], 
// the longest harmonious subsequence has length 5.