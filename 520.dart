class Solution {
  bool detectCapitalUse(String word) {
    for(var i = 1; i<word.length;i++){
        if((word[1].toUpperCase()== word[1])!=(word[i].toUpperCase()== word[i])||
        (word[0].toLowerCase()== word[0]&& word[i].toUpperCase()== word[i]))
        return false;
        
    }
    return true;
  }
}
void main() {
  Solution solution = Solution();
  print(solution.detectCapitalUse("USA"));    
  print(solution.detectCapitalUse("leetcode")); 
  print(solution.detectCapitalUse("Google"));   
  print(solution.detectCapitalUse("FlaG"));     
}
