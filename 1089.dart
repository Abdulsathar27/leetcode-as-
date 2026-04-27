class Solution {
  void duplicateZeros(List<int> arr) {
    int zeros = 0;

    // Count zeros
    for (int num in arr) {
      if (num == 0) zeros++;
    }

    int i = arr.length - 1;
    int j = arr.length + zeros - 1;

    // Work from end
    while (i < j) {
      if (j < arr.length) {
        arr[j] = arr[i];
      }

      if (arr[i] == 0) {
        j--;
        if (j < arr.length) {
          arr[j] = 0;
        }
      }

      i--;
      j--;
    }
  }
}

void main() {
  Solution sol = Solution();

  List<int> arr = [1,0,2,3,0,4,5,0];
  sol.duplicateZeros(arr);

  print(arr); 
 
}