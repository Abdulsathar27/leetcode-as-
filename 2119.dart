class Solution {
  bool isSameAfterReversals(int num) {
    if (num == 0) return true;
    return num % 10 != 0;
  }
}

void main() {
  var sol = Solution();
  print(sol.isSameAfterReversals(0));    
  print(sol.isSameAfterReversals(123));  
  print(sol.isSameAfterReversals(120));  
}

// This Dart code checks if an integer remains the same after two reversals.

// The key insight is that reversing a number two times will only result in the original number
// if the first reversal didn't cause any information loss, which only happens if the original number doesn't 
// end with a zero (unless the number itself is 0).

// If num is 0, it remains 0 after two reversals, so it returns true.

// If num does not end with 0 (i.e., num % 10 != 0),
// the first reversal (reverse1) won't drop any trailing zeros,
// as there are none. The second reversal (reverse2(reverse1(num)))
// will therefore restore the original number, so it returns true.

// If num ends with 0 (i.e., num % 10 == 0 and num > 0), 
// the first reversal will drop the trailing zero(s). For example, 
// reverse(120)=21. The second reversal, reverse(21)=12, which is not 120. Thus, it returns false.