class Solution {
  int findPermutationDifference(String s, String t) {
    int ans = 0;
    List<int> words = List.filled(26, 0);

    
    for (int i = 0; i < s.length; i++) {
      words[s.codeUnitAt(i) - 'a'.codeUnitAt(0)] = i;
    }

   
    for (int i = 0; i < t.length; i++) {
      ans += (words[t.codeUnitAt(i) - 'a'.codeUnitAt(0)] - i).abs();
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.findPermutationDifference("abc", "bac")); 
}

// This Dart program calculates the permutation difference between two strings by measuring how far each character
// moves from its position in the first string to its position in the second string. 
// It first creates an array to store the index of each character in string s, 
// using the character’s alphabetical position as the index. Then, while looping through string t,
// it looks up where each character originally appeared in s and computes the absolute difference between 
// that position and the current index in t. These differences represent how much each character has shifted.
// The program adds all these absolute differences together to get the final permutation difference. For example,
// with "abc" and "bac", the total movement adds up to 2, which is returned as the result.