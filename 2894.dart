class Solution {
  int differenceOfSums(int n, int m) {
    int nums1 = 0;
    int nums2 = 0;
    for (int i = 1; i <= n; i++) {
      if (i % m == 0) {
        nums2 += i;
      } else {
        nums1 += i;
      }
    }
    return nums1 - nums2;
  }
}

void main() {
  Solution s = Solution();
  print(s.differenceOfSums(10, 3));
}


// This Dart program calculates the difference between two sums formed from numbers between 1 and n.
// The first sum, nums1, includes all numbers not divisible by m, while the second sum, nums2,
// includes all numbers divisible by m.
// Inside the loop, each number from 1 to n is checked with 
// the condition i % m == 0; if true, it’s added to nums2, otherwise to nums1.
// After the loop, the program returns the difference nums1 - nums2.
// For example, when n = 10 and m = 3, the numbers divisible by 3 are 3, 6, 9 (sum = 18),
// and the others are 1, 2, 4, 5, 7, 8, 10 (sum = 37), giving a final result of 37 - 18 = 19.