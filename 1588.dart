class Solution {
  void sumOddLengthSubarrays(List<int> arr) {
    int result = 0;
    int preEvenSum = 0;
    int preOddSum = 0;

    for (int i = 0; i < arr.length; i++) {
      int currEvenSum = preOddSum + ((i + 1) ~/ 2) * arr[i];
      int currOddSum = preEvenSum + ((i + 2) ~/ 2) * arr[i];

      result += currOddSum;
      preEvenSum = currEvenSum;
      preOddSum = currOddSum;
    }

    print("Sum of all odd-length subarrays: $result");
  }
}
void main() {
  var sol = Solution();
  sol.sumOddLengthSubarrays([1, 4, 2, 5, 3]);  
}

// This Dart code calculates the sum of all odd-length subarrays within a given array arr efficiently.
// It uses a dynamic programming approach, tracking preEvenSum and preOddSum which represent the sum of elements in even
// and odd length subarrays ending at the previous index, respectively. In each iteration, 
// it calculates currEvenSum and currOddSum based on the previous sums and the current element arr[i], 
// effectively accumulating the sums of all relevant subarrays.
// The total result is updated by adding currOddSum in each step, and finally, the computed sum is printed.