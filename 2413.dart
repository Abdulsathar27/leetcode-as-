void main() {
  print(Solution().smallestEvenMultiple(5));
}

class Solution {
  int smallestEvenMultiple(int n) {
   return n * (n % 2 + 1);
  }
}

// Logic Explained
// The Smallest Even Multiple of n is the smallest positive integer that is divisible by 
// both n and 2 (i.e., it is the Least Common Multiple (LCM) of n and 2, or LCM(n,2)).

// The logic uses a concise mathematical trick to determine LCM(n,2):

// The expression is n×(n%2+1).

// If n is Even:

// n(mod2)=0.

// The multiplier becomes (0+1)=1.

// The result is n×1=n.

// This is correct, as the smallest even multiple of an even number n is simply n itself. (e.g., SEM(4)=4).

// If n is Odd:

// n(mod2)=1.

// The multiplier becomes (1+1)=2.

// The result is n×2=2n.

// This is correct, as the smallest even multiple of an odd number n is 2n. (e.g., SEM(5)=10).

// In the main function, smallestEvenMultiple(5) is called. Since 5 is odd,
// the expression evaluates to 5×(5(mod2)+1)=5×(1+1)=5×2=10.