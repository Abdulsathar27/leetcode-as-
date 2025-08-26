class Solution {
  String reversePrefix(String word, String ch) {
    int j = word.indexOf(ch);
    if (j != -1) {
      String prefix = word.substring(0, j + 1);
      String reversed = prefix.split('').reversed.join();
      return reversed + word.substring(j + 1);
    }
    return word;
  }
}

void main() {
  var sol = Solution();
  print(sol.reversePrefix("abcdefd", "d")); 
  print(sol.reversePrefix("xyxzxe", "z")); 
  print(sol.reversePrefix("abcd", "z"));   
}

// This Dart code defines a Solution class with a reversePrefix method that reverses the prefix of a string word up to the first occurrence of a character ch.
// The method first finds the index of ch using word.indexOf(ch). 
// If ch is found (index is not -1), it extracts the prefix, reverses it using split,
// reversed, and join, and then concatenates the reversed prefix with the rest of the original string. 
// If ch is not found, the original word is returned unchanged.