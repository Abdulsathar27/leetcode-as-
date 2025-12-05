class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    Set<int> set1 = nums1.toSet();
    List<int> ans = [];

    for (int num in nums2) {
      if (set1.remove(num)) {
        ans.add(num);
      }
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.intersection([1, 2, 2, 1], [2, 2])); // [2]
}

// This Dart program finds the unique intersection of two integer lists — that is, the numbers that appear in both lists,
// but only once in the result.

// Here’s how it works:

// The first list nums1 is converted into a Set, named set1, which automatically removes duplicates and allows for fast lookups.

// An empty list ans is created to store the intersection results.

// The program then loops through each number in nums2.

// If num exists in set1, it means the number is common to both lists.

// The condition set1.remove(num) both checks and removes the number from the set — ensuring each common element is added only once to ans.

// Finally, it returns ans, which contains all unique intersection values.

// Example:
// For [1, 2, 2, 1] and [2, 2]:

// The number 2 is common, and it’s added once.
// ✅ Output: [2]