class Solution {
  int minBitFlips(int start, int goal) {
    int x = start ^ goal; 
    int count = 0;

    
    while (x > 0) {
      count += x & 1;
      x >>= 1;
    }

    return count;
  }
}

void main() {
  var sol = Solution();
  print(sol.minBitFlips(10, 7)); 
  print(sol.minBitFlips(3, 4));  

}


// This Dart code calculates the minimum number of bit flips required to transform the integer start into the integer goal.
// This is equivalent to finding the number of set bits (or '1's) in the result of the bitwise XOR operation between the two numbers.

// Method Explanation
// Bitwise XOR (^):
// The line int x = start ^ goal; calculates the XOR of start and goal. The resulting integer x has a '1' at every bit position where start and goal differ, and a '0' where they are the same. Therefore, the problem reduces to counting the number of set bits in x.

// Counting Set Bits (Hamming Weight):
// The while (x > 0) loop iteratively counts the set bits in x:

// count += x & 1;: The bitwise AND with 1 (x & 1) isolates the least significant bit (LSB). If the LSB is '1',
// the expression evaluates to 1, which is added to count; otherwise, 0 is added.

// x >>= 1;: The bitwise right shift (x >>= 1) discards the LSB and shifts all other bits one position to the right,
// preparing the next bit to be checked in the following iteration.

// The loop continues until all bits have been checked (x becomes 0).
// The final count is the minimum number of flips required.