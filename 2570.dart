class Solution {
  List<List<int>> mergeArrays(List<List<int>> nums1, List<List<int>> nums2) {
    int n = nums1.length, m = nums2.length;
    List<List<int>> ans = [];
    int i = 0, j = 0;

    while (i < n && j < m) {
      if (nums1[i][0] < nums2[j][0]) {
        ans.add(nums1[i++]);
      } else if (nums1[i][0] > nums2[j][0]) {
        ans.add(nums2[j++]);
      } else {
        ans.add([nums1[i][0], nums1[i][1] + nums2[j][1]]);
        i++;
        j++;
      }
    }

    while (i < n) {
      ans.add(nums1[i++]);
    }
    while (j < m) {
      ans.add(nums2[j++]);
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.mergeArrays([
    [1, 2],
    [2, 3],
    [4, 5]
  ], [
    [1, 4],
    [3, 2],
    [4, 1]
  ]));
}

// This Dart program merges two sorted 2D arrays (nums1 and nums2) based on their first element values while combining 
// values with the same keys. Each sublist inside nums1 and nums2 represents a pair — the first value acts like an ID or key
// and the second value is its corresponding number. The program uses 
// two pointers i and j to traverse both lists simultaneously: if one key is smaller,
// that pair is added to the result; if they are equal, it adds a new pair with the same key but with 
// their second values summed. After one list is fully processed, the remaining pairs from 
// the other list are appended to the result. For example, 
// merging [[1,2],[2,3],[4,5]] and [[1,4],[3,2],[4,1]] gives [[1,6],[2,3],[3,2],[4,6]], 
// since keys 1 and 4 appear in both and their values are combined.