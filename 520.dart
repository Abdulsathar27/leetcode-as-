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



// This Dart code defines a Solution class with a method detectCapitalUse that checks if a given word adheres to specific capitalization rules.
// The method iterates through the word starting from the second character (index 1). 
// It uses a boolean comparison to check if the capitalization of the current character matches the capitalization of the second character (word[1]). 
// Additionally, it checks if the first character is lowercase (word[0]) while any subsequent character is uppercase, which would also violate the rules.
//  If any of these conditions are met, indicating an invalid capitalization pattern, 
//  the method immediately returns false; otherwise, if the loop completes without finding any violations, it returns true.