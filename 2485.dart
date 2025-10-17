import 'dart:math';

class Solution {
  int pivotInteger(int n) {
    double y = (n * n + n) / 2;
    int x = sqrt(y).toInt();
    return x * x == y ? x : -1;
  }
}

void main() {
  Solution s = Solution();
  print(s.pivotInteger(8));
}

// This Dart code efficiently finds the pivot integer $x$ for a given number $n$.
// A pivot integer is a number where the sum of integers from 1 to $x$ is equal to the sum of integers from $x$ to $n$.
// Simple English ExplanationThe method uses a smart mathematical shortcut instead of looping and summing.
// Calculate the Total Sum's Target: The code first calculates the total sum of all integers from 1 up to $n$ using the formula 
// $\frac{n(n+1)}{2}$. It stores this value in the variable $y$. Through algebraic simplification 
// (as shown in the previous explanation), a pivot $x$ only exists if the total sum $y$ is a perfect square of $x$.
// Find the Potential Pivot: It then takes the square root of $y$ and converts it to an integer, storing it in $x$.
// This $x$ is the only possible candidate for the pivot integer.Verify and Return: Finally, 
// the code checks if squaring the candidate $x$ gives back the original total sum $y$ (x * x == y).
// If they are equal, it means $y$ was a perfect square, the pivot exists, and $x$ is returned.If they are not equal, 
// no such pivot integer exists, and $-1$ is returned.In short, the code finds the sum of $1$ to $n$,
//  checks if that sum is a perfect square, and if it is, the square root is the answer.