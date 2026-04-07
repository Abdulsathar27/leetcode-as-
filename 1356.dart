class Solution {
  List<int> sortByBits(List<int> arr) {
    arr.sort((a, b) {
      int bitA = countBits(a);
      int bitB = countBits(b);

      if (bitA == bitB) {
        return a.compareTo(b); // smaller number first
      }
      return bitA.compareTo(bitB); // fewer bits first
    });

    return arr;
  }

  int countBits(int n) {
    int count = 0;

    while (n > 0) {
      count += n & 1; // check last bit
      n >>= 1; // right shift
    }

    return count;
  }
}
void main() {
  Solution sol = Solution();

  print(sol.sortByBits([0,1,2,3,4,5,6,7,8]));
  // Output: [0,1,2,4,8,3,5,6,7]
}