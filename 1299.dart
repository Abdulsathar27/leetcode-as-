class Solution {
  List<int> replaceElements(List<int> arr) {
    int maxOfRight = -1;

    for (int i = arr.length - 1; i >= 0; i--) {
      int current = arr[i];
      arr[i] = maxOfRight;
      
      if (current > maxOfRight) {
        maxOfRight = current;
      }
    }

    return arr;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.replaceElements([17, 18, 5, 4, 6, 1]));
  print(sol.replaceElements([400]));
 
}