class Solution {
  List<List<int>> construct2DArray(List<int> original, int m, int n) {
    if (original.length != m * n) return [];
    List<List<int>> ans = List.generate(m, (_) => List.filled(n, 0));
    int k = 0;
    for (int i = 0; i < m; i++) {
      for (int j = 0; j < n; j++) {
        ans[i][j] = original[k];
        k++;
      }
    }
    return ans;
  }
}

void main() {
  Solution sol = Solution();
  List<int> original = [1, 2, 3, 4, 5, 6];
  int m = 2, n = 3;

  List<List<int>> result = sol.construct2DArray(original, m, n);
  print(result); 
}


// This Dart code constructs a 2D array from a 1D array. 
// The construct2DArray method first checks if 
// the length of the original list is equal to the product of m and n;
// if not, it returns an empty list,
// as it's impossible to form the desired array.
// If the dimensions match, it initializes a new 2D list (ans) with m rows and n columns.
// It then iterates through the new 2D list,
// filling each cell ans[i][j] with the next element from the original list using a single counter k,
// effectively transforming the 1D list into the new 2D array.