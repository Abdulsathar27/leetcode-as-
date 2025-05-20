class Solution {
  int singleNumber(List<int> nums) {
    var  array = 0;
    for(var s=0; s<nums.length;s++){
        array = array^nums[s];
    }
    return array;
    
  }
}
