class Solution {
  int findComplement(int num) {
    int i = 1;

    while (i <= num) {
      num ^= i; // flip bit
      i <<= 1;  // move to next bit (1,2,4,8...)
    }

    return num;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.findComplement(5)); // 2
  print(sol.findComplement(1)); // 0
}