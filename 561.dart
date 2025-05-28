class Solution {
  int arrayPairSum(List<int> nums) {
    List<int> a = List.from(nums);
    a.sort();
    var sum = 0;
    for( var i = a.length-2; i >=0 ;i-=2){
        sum +=a[i];
    } 
    return sum;
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums = [1, 4, 3, 2];
  int result = solution.arrayPairSum(nums);
  print("Sum of max of min-pairs: $result"); 
}