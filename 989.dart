class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    int i = num.length - 1;

    while (i >= 0) {
      num[i] += k;
      k = num[i] ~/ 10;
      num[i] %= 10;
      i--;
    }

    while (k > 0) {
      num.insert(0, k % 10);
      k ~/= 10;
    }

    return num;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.addToArrayForm([1, 2, 0, 0], 34)); // [1,2,3,4]
  print(sol.addToArrayForm([2, 7, 4], 181));   // [4,5,5]
  print(sol.addToArrayForm([9, 9, 9], 1));     // [1,0,0,0]
}