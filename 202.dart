class Solution {
  bool isHappy(int n) {
    while (n > 9) {
      int sum = 0;
      while (n > 0) {
        int digit = n % 10;
        sum += digit * digit;
        n ~/= 10;
      }
      n = sum;
    }
    return n == 1 || n == 7;
  }
}

void main() {
  Solution s = Solution();
  print(s.isHappy(19)); // true
  print(s.isHappy(2));  // false
}

// This Dart program checks whether a number is a Happy Number. A happy number is one that eventually becomes 1 after repeatedly
// replacing the number with the sum of the squares of its digits. Inside the isHappy function, 
// the outer while (n > 9) loop keeps running until the number becomes a single digit. For each iteration,
// the inner loop extracts each digit of n, squares it, and adds it to sum. After processing all digits,
// n is updated to this sum, and the process continues.

// When the loop ends, if n equals 1 (happy number) or 7 (which leads to 1 in the sequence),
// the function returns true; 
// otherwise, it returns false.