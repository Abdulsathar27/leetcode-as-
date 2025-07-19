class Solution {
  void subtractProductAndSum(int n) {
    int a = 1;
    int b = 0;

    while (n > 0) {
      int k = n % 10;
      a *= k;
      b += k;
      n ~/= 10;
    }

    print("Result: ${a - b}");
  }
}

void main() {
  Solution solution = Solution();
  solution.subtractProductAndSum(234); 
}
// This Dart code defines a Solution class with a subtractProductAndSum method that calculates the difference between 
// the product and the sum of an integer's digits.
// It initializes a (for product) to 1 and b (for sum) to 0. It then enters a while loop that continues as long as n is greater than 0.
// In each iteration, it extracts the last digit of n using the modulo operator (% 10), multiplies it into a, adds it to b, and
// then removes the last digit from n using integer division (~/= 10). Finally, it prints the result (a - b).