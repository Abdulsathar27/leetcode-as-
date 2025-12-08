class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    Map<int, int> mp = {};
    List<int> ans = [];

    for (int x in nums1) {
      mp[x] = (mp[x] ?? 0) + 1;
    }

    for (int x in nums2) {
      if (mp.containsKey(x) && mp[x]! > 0) {
        ans.add(x);
        mp[x] = mp[x]! - 1;
      }
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.intersect([1, 2, 2, 1], [2, 2])); // [2, 2]
}
// This Dart program finds the intersection of two arrays, including duplicate elements — meaning each common number appears as 
// many times as it occurs in both lists.

// Here’s how it works:

// A Map<int, int> named mp is used to count how many times each number appears in the first list, nums1.

// For example, if nums1 = [1, 2, 2, 1], then mp becomes {1: 2, 2: 2}.

// It then loops through the second list, nums2.

// If a number exists in mp and its count is greater than 0, it means this number is common to both lists.

// The number is added to the result list ans, and its count in the map is decreased by 1 to ensure duplicates are handled correctly.

// Finally, it returns ans, which contains all intersecting elements, including duplicates.

// 💡 Example:
// For nums1 = [1, 2, 2, 1] and nums2 = [2, 2]:

// The common number 2 appears twice in both, so the result is [2, 2].