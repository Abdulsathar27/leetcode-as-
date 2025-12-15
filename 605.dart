class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    if (n == 0) return true;

    for (int i = 0; i < flowerbed.length; i++) {
      if (flowerbed[i] == 0 &&
          (i == 0 || flowerbed[i - 1] == 0) &&
          (i == flowerbed.length - 1 || flowerbed[i + 1] == 0)) {
        flowerbed[i] = 1;
        n--;
        if (n == 0) return true;
      }
    }
    return false;
  }
}

void main() {
  Solution s = Solution();

  List<int> flowerbed = [0, 1, 0];
  int n = 1;

  bool result = s.canPlaceFlowers(flowerbed, n);
  print(result); 
}


// This Dart program checks whether it is possible to plant a given number of new flowers in a flowerbed without breaking 
// the rule that no two flowers can be adjacent. The function iterates through 
// the flowerbed and looks for positions where the current spot is empty and both neighboring spots
// (if they exist) are also empty. When such a valid position is found, 
// it places a flower there by setting the value to 1 and decreases the required count n.
// If n reaches zero at any point, the function immediately returns true, meaning all flowers have been successfully planted.
// If the loop finishes and there are still flowers left to place, it returns false. In the example [0, 1, 0] with
// n = 1, there is no valid position to plant a flower, so the result is false.