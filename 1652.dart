class Solution {
  List<int> decrypt(List<int> code, int k) {
    int n = code.length;

    List<int> ans = List.filled(n, 0);

    if (k == 0) {
      return ans;
    }

    int sum = 0;

    int start = k > 0 ? 1 : n + k;
    int end = k > 0 ? k : n - 1;

    // Initial window sum
    for (int i = start; i <= end; i++) {
      sum += code[i];
    }

    // Sliding window
    for (int i = 0; i < n; i++) {
      ans[i] = sum;

      sum -= code[start % n];
      start++;

      end++;
      sum += code[end % n];
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.decrypt([5,7,1,4], 3));
  // [12,10,16,13]

  print(sol.decrypt([1,2,3,4], 0));
  // [0,0,0,0]

  print(sol.decrypt([2,4,9,3], -2));
  // [12,5,6,13]
}