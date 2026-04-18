class Solution {
  int findNumbers(List<int> nums) {
    int ans = 0;

    for (int num in nums) {
      if ((num > 9 && num < 100) ||
          (num > 999 && num < 10000) ||
          num == 100000) {
        ans++;
      }
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.findNumbers([12, 345, 2, 6, 7896])); 


  print(sol.findNumbers([555, 901, 482, 1771])); 

}