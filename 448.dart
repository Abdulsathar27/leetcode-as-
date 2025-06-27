class Solution {
  List<int> findDisappearedNumbers(List<int> nums) {
    List<int>answer = [];
    for(var n in nums){
         var index = n.abs() -1;
        nums[index] = -nums[index].abs();
    }
    for(var i = 0; i < nums.length;i++ ){
        if(nums[i]>0)
        answer.add(i+1);
    }
    return answer;
  }
}
void main() {
  var solution = Solution();
  print(solution.findDisappearedNumbers([4,3,2,7,8,2,3,1]));
 
}

// This Dart code finds all numbers that appear to be missing from a given list of integers,
// assuming the list contains numbers from 1 to n (where n is the list's length) with some numbers appearing twice and others missing.
// It cleverly uses the input list itself as a hash table: for each number n encountered, 
// it negates the value at index n.abs() - 1. After processing all numbers, it iterates through the modified list; any positive number at index i indicates 
// that i + 1 was a missing number, which is then added to the answer list.
