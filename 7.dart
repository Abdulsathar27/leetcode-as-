class Solution {
  int reverse(int x) {
    int ans = 0;

    while (x != 0) {
      int digit = x.remainder(10);

      if (ans > 214748364 ||
          (ans == 214748364 && digit > 7)) {
        return 0;
      }

      if (ans < -214748364 ||
          (ans == -214748364 && digit < -8)) {
        return 0;
      }

      ans = ans * 10 + digit;
      x = x ~/ 10;
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.reverse(123));        // 321
  print(sol.reverse(-123));       // -321
  print(sol.reverse(120));        // 21
  print(sol.reverse(1534236469)); // 0 (overflow)
}


