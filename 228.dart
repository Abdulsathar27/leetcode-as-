class Solution {
  List<String> summaryRanges(List<int> nums) {
    List<String> result = [];

    if (nums.isEmpty) return result;

    int start = nums[0];

    for (int i = 1; i <= nums.length; i++) {
      if (i == nums.length || nums[i] != nums[i - 1] + 1) {
        if (start == nums[i - 1]) {
          result.add(start.toString());
        } else {
          result.add("$start->${nums[i - 1]}");
        }

        if (i < nums.length) start = nums[i];
      }
    }

    return result;
  }
}

void main() {
  Solution s = Solution();

  print(s.summaryRanges([0, 1, 2, 4, 5, 7]));  
  // ["0->2","4->5","7"]

  print(s.summaryRanges([1, 3]));  
  // ["1","3"]

  print(s.summaryRanges([]));  
  // []
}

// This Dart program summarizes consecutive ranges in a sorted list of integers.
// The goal is to group continuous sequences of numbers into a compact string format  
// for example, [0,1,2,4,5,7] becomes ["0->2", "4->5", "7"].
// Inside the summaryRanges function, it first checks if the list is empty and returns 
// an empty result if so. Then, it sets the starting point start to the first number. 
// The loop goes through the list, checking whether the current number continues
// the sequence (nums[i] == nums[i - 1] + 1). When a break in the sequence is found  
// or when it reaches the end — it records the range: if start and nums[i - 1] are the same, 
// it adds a single number; otherwise, it adds a range in the "start->end" format.