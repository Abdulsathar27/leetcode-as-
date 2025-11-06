class Solution {
  int countSymmetricIntegers(int low, int high) {
    int c = 0;
    for (int n = low; n <= high; n++) {
      String s = n.toString();
      if (s.length % 2 != 0) continue;
      int h = s.length ~/ 2;
      int a = 0, b = 0;
      for (int i = 0; i < h; i++) a += int.parse(s[i]);
      for (int i = h; i < s.length; i++) b += int.parse(s[i]);
      if (a == b) c++;
    }
    return c;
  }
}

void main() {
  print(Solution().countSymmetricIntegers(1, 100));
}

// This Dart program counts how many symmetric integers exist between two given numbers,
// low and high. A symmetric integer is one where the sum of the first half of 
// its digits equals the sum of the second half, and it must have an even number of digits.
// Inside the loop, each number n is converted to a string so its digits can be easily split.
// If the number of digits is odd, it’s skipped. Then the program
// calculates the sum of digits in the left half (a) and right half (b) and compares them.
// If both sums are equal, it increases the count. For example,
// between 1 and 100, the symmetric numbers are 11, 22, 33, 44, 55, 66, 77, 88, and 99, so the output is 9.