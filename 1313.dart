class Solution {
  List<int> decompressRLElist(List<int> nums) {
    List<int>result = [];
    for(var n=0;n<nums.length;n++){
        if(n%2==0){
            for(var i=0;i<nums[n];i++){
                result.add(nums[n+1]);
            }
        }
    }
    return result;
  }
}