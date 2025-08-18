class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
   
    Set<int> set1 = nums1.toSet();
    Set<int> set2 = nums2.toSet();

    List<List<int>> ans = [[], []];


    for (var num in set1) {
      if (!set2.contains(num)) {
        ans[0].add(num);
      }
    }

    for (var num in set2) {
      if (!set1.contains(num)) {
        ans[1].add(num);
      }
    }

    return ans;
  }
}

void main() {
  var solution = Solution();
  print(solution.findDifference([1, 2, 3], [2, 4, 6]));
}

// This Dart code finds the unique elements in two given lists of integers, 
// nums1 and nums2, and returns them as a list of two separate lists. 
// The findDifference method first converts the input lists into Sets to efficiently handle unique elements. 
// It then iterates through the elements of set1 and adds any element not present in set2 to the first sublist of ans.
// Similarly, it iterates through set2 and adds any element not present in set1 to the second sublist.
// Finally, it returns the ans list, containing the distinct elements from each input list.