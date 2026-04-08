class Solution {
  bool canBeEqual(List<int> target, List<int> arr) {
    Map<int, int> freq = {};

    
    for (int num in target) {
      freq[num] = (freq[num] ?? 0) + 1;
    }

   
    for (int num in arr) {
      if (!freq.containsKey(num)) {
        return false;
      }

      freq[num] = freq[num]! - 1;

      if (freq[num] == 0) {
        freq.remove(num);
      }
    }

    return freq.isEmpty;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.canBeEqual([1,2,3,4], [2,4,1,3])); 
  print(sol.canBeEqual([1,2,2,3], [1,1,2,3])); 
}