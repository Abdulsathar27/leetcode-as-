class Solution {
  List<List<int>> minimumAbsDifference(List<int> arr) {
    List<List<int>> ans = [];

    int mn = 1 << 30;

    // Sort array
    arr.sort();

    for (int i = 1; i < arr.length; i++) {
      int diff = arr[i] - arr[i - 1];

      if (diff < mn) {
        mn = diff;
        ans.clear();
      }

      if (diff == mn) {
        ans.add([arr[i - 1], arr[i]]);
      }
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.minimumAbsDifference([4,2,1,3]));
  // [[1,2],[2,3],[3,4]]

  print(sol.minimumAbsDifference([1,3,6,10,15]));
  // [[1,3]]

  print(sol.minimumAbsDifference([3,8,-10,23,19,-4,-14,27]));
  // [[-14,-10],[19,23],[23,27]]
}