class Solution {
  int subsetXORSum(List<int> nums) {
    int total = 0;
    for (int num in nums) {
      total |= num;  
    }
    return total * (1 << (nums.length - 1));
  }
}


// This Dart code calculates the sum of XOR totals of all possible subsets of the input list nums.
// It uses a highly efficient property of the XOR operation related to subset sums.

// The key insight is:

// Bitwise OR of all elements (total): The variable total is calculated as the bitwise OR of all numbers in nums.
// The k-th bit of total is 1 if and only if the k-th bit is 1 in at least one number in nums.

// Number of Subsets: An array with N elements has 2 N
// subsets.

// XOR Total Property: For any bit position k, if the k-th bit is set in the overall 
// total (meaning it's set in at least one number in nums), then exactly half of all 2 N
// subsets will have the k-th bit set in their XOR total.

// The total number of subsets is 2 N.

// The number of subsets with the k-th bit set in their XOR total is 2 N−1
//  .

// Final Sum: Since the k-th bit is set in the final sum exactly 2 N−1
// times (contributing 2 

// N−1 ×2 k
// to the total sum), the overall sum of all subset XOR totals is equivalent to the bitwise OR of all elements (total) multiplied by 2 N−1.

// The expression 1≪(nums.length−1) is the bitwise way to calculate 2 
// nums.length−1.

// The method can be summarized as:

// Result=(nums[0]∣nums[1]∣…∣nums[N−1])×2 
// N−1