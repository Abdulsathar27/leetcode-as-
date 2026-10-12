class Solution {
  int maxArea(List<int> height) {
    int left = 0;
    int right = height.length - 1;
    int maxArea = 0;

    while (left < right) {
      int currentArea =
          (height[left] < height[right] ? height[left] : height[right]) *
          (right - left);

      if (currentArea > maxArea) {
        maxArea = currentArea;
      }

      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }

    return maxArea;
  }
}

void main() {
  Solution solution = Solution();

  List<int> height = [1, 8, 6, 2, 5, 4, 8, 3, 7];

  print(solution.maxArea(height)); // Output: 49
}
