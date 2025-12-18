
class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    Map<int, int> next = {};
    List<int> stack = [];

    for (int i = nums2.length - 1; i >= 0; i--) {
      while (stack.isNotEmpty && stack.last <= nums2[i]) {
        stack.removeLast();
      }
      next[nums2[i]] = stack.isEmpty ? -1 : stack.last;
      stack.add(nums2[i]);
    }

    List<int> res = [];
    for (int num in nums1) {
      res.add(next[num]!);
    }

    return res;
  }
}

void main() {
  Solution s = Solution();
  print(s.nextGreaterElement([4, 1, 2], [1, 3, 4, 2])); // [-1, 3, -1]
}

// This Dart program finds the next greater element for each number in nums1 based on their positions in nums2. 
// It processes nums2 from right to left using a stack to keep track of numbers that could be the next greater element.
// For each number, smaller or equal values are removed from the stack,
// ensuring that the top of the stack always represents the next greater value if one exists.
// A map stores this relationship so that each number in nums2 is linked to its next greater element or -1 if none is found.
// Finally, the program builds the result for nums1 by simply looking up each number in the map,
// making the solution efficient and clean.