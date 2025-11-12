class Solution {
  List<int> findIntersectionValues(List<int> nums1, List<int> nums2) {
    int count1 = 0;
    int count2 = 0;

    for (int i = 0; i < nums1.length; i++) {
      for (int j = 0; j < nums2.length; j++) {
        if (nums1[i] == nums2[j]) {
          count1++;
          break;
        }
      }
    }

    for (int i = 0; i < nums2.length; i++) {
      for (int j = 0; j < nums1.length; j++) {
        if (nums2[i] == nums1[j]) {
          count2++;
          break;
        }
      }
    }

    return [count1, count2];
  }
}

void main() {
  Solution s = Solution();
  print(s.findIntersectionValues([1, 2, 3], [2, 3, 4])); 
}

// This Dart program finds how many elements from one list appear in another and
// returns those counts as a pair of numbers.
// Inside the findIntersectionValues function, 
// two counters — count1 and count2 — are used. 
// The first nested loop checks how many elements from nums1 also exist in nums2, 
// increasing count1 for every match.
// The second loop does the opposite: it checks how many elements from nums2 appear in nums1, increasing count2.
// The break statement ensures that each element is only counted once,
// even if duplicates exist. Finally, the function returns both counts as a list. 
// For example, for [1, 2, 3] and [2, 3, 4], the common elements are 2 and 3, so both lists share two intersections,
// resulting in [2, 2].
