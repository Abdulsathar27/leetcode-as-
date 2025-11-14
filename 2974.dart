class Solution {
  List<int> numberGame(List<int> nums) {
    nums.sort(); 

    for (int i = 0; i < nums.length; i += 2) {
      int temp = nums[i];
      nums[i] = nums[i + 1];
      nums[i + 1] = temp;
    }

    return nums;
  }
}

void main() {
  Solution s = Solution();
  print(s.numberGame([5, 4, 2, 3])); 
}

// This Dart program rearranges numbers in a list based on a simple swapping rule after sorting them.
// Inside the numberGame function, the list nums is first sorted in ascending order 
// so that the smallest numbers come first. 
// Then, the program loops through the list in steps of two (i += 2) 
// and swaps every pair of consecutive elements.
// This means the first two elements are swapped,
// then the next two, and so on. The swapping is done using a temporary variable
// temp to hold one value during the exchange.
// For example, with the input [5, 4, 2, 3], after sorting,
// it becomes [2, 3, 4, 5], and after swapping pairs,
// it results in [3, 2, 5, 4], which is the final output.