class Solution {
  List<int> sumZero(int n) {
    List<int> answers = List.filled(n, 0);

    for (int i = 0; i < n; i++) {
      answers[i] = i * 2 - n + 1;
    }

    return answers;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.sumZero(5)); // [-4,-2,0,2,4]
  print(sol.sumZero(3)); // [-2,0,2]
  print(sol.sumZero(1)); // [0]
}