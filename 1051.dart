class Solution {
  int heightChecker(List<int> heights) {
    List<int>expected = List.from(heights);
   expected.sort();
    var nums = 0 ;
    for(var i = 0; i < heights.length;i++){
        if(heights[i]!=expected[i]){
            nums++;
    }  
  }
   return nums; 
}
}
void main() {
  Solution s = Solution();
  print(s.heightChecker([1, 1, 4, 2, 1, 3])); 
}

// This Dart program defines a Solution class with a heightChecker method designed to count mismatches between an array of heights and its sorted version. 
// Inside heightChecker, a copy of the input heights list is created and sorted to represent the expected order. 
// The program then iterates through both the original heights and the expected lists, incrementing a counter (nums) for each position where the heights do not match. 
// Finally, the main function instantiates Solution and prints the result of calling heightChecker with a sample list [1, 1, 4, 2, 1, 3].