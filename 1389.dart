class Solution {
  void createTargetArray(List<int> nums, List<int> index) {
    List<int> answer = [];

    for (int i = 0; i < nums.length; i++) {
      answer.insert(index[i], nums[i]);
    }

    print(answer);
  }
}
void main() {
  var sol = Solution();
  sol.createTargetArray([0, 1, 2, 3, 4], [0, 1, 2, 2, 1]);
}

// This Dart code defines a Solution class with a createTargetArray method that constructs a new list based on two input lists: 
// nums and index. It initializes an empty answer list. Then, it iterates through the nums list, and for each element nums[i], 
// it inserts that element into the answer list at the position specified by index[i]. Finally, the method prints the answer list, 
// which will contain the elements from nums placed according to their corresponding indices.