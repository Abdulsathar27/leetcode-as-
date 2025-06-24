class Solution {
  void sortColors(List<int> nums) {
    return nums.sort();
    
  }
}
void main() {
  var solution = Solution();
  List<int> colors = [2, 0, 2, 1, 1, 0];
  solution.sortColors(colors);
  print(colors); 
}

// This Dart code defines a Solution class with a sortColors method that sorts a list of integers in ascending order. 
// The method directly utilizes Dart's built-in sort() method, which modifies the list in-place. 
// The main function demonstrates its usage by creating a list of integers [2, 0, 2, 1, 1, 0] representing colors 
// (presumably 0 for red, 1 for white, and 2 for blue), calling sortColors to sort it, and then printing the sorted list, 
// which will be [0, 0, 1, 1, 2, 2].