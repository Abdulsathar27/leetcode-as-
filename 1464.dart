class Solution {
  int maxProduct(List<int> nums) {
    if (nums.length < 2) return 0;

    int max1 = 0;
    int max2 = 0;

    for (var num in nums) {
      if (num > max1) {
        max2 = max1;
        max1 = num;
      } else if (num > max2) {
        max2 = num;
      }
    }

    return (max1 - 1) * (max2 - 1);
  }
}
void main() {
  var sol = Solution();
  print(sol.maxProduct([3, 4, 5, 2]));
  print(sol.maxProduct([1]));         
  print(sol.maxProduct([]));          
}
// This Dart code calculates the maximum product of (num1 - 1) * (num2 - 1) 
// where num1 and num2 are the two largest distinct numbers in the input list nums. 
// The maxProduct method first handles edge cases where the list has fewer than two elements, returning 0.
// It then efficiently finds the two largest numbers (max1 and max2) by iterating through the list once. During iteration, 
// it updates max1 and max2 to store the current largest and second largest numbers, respectively. Finally, 
// it returns the product of (max1 - 1) and (max2 - 1).