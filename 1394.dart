class Solution {
  int findLucky(List<int> arr) {
    List<int> count = List.filled(arr.length + 1, 0);

    // Count frequency
    for (int num in arr) {
      if (num <= arr.length) {
        count[num]++;
      }
    }

    // Find largest lucky number
    for (int i = arr.length; i >= 1; i--) {
      if (count[i] == i) {
        return i;
      }
    }

    return -1;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.findLucky([2,2,3,4])); // 2
  print(sol.findLucky([1,2,2,3,3,3])); // 3
  print(sol.findLucky([2,2,2,3,3])); // -1
  print(sol.findLucky([7,7,7,7,7,7,7])); // 7
}