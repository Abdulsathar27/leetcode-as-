class Solution {
  int uniqueMorseRepresentations(List<String> words) {
    List<String> morse = [
      ".-","-...","-.-.","-..",".","..-.","--.","....","..",
      ".---","-.-",".-..","--","-.","---",".--.","--.-",".-.",
      "...","-","..-","...-",".--","-..-","-.--","--.."
    ];

    Set<String> seen = {};

    for (String word in words) {
      String code = "";
      for (int i = 0; i < word.length; i++) {
        int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
        code += morse[index];
      }
      seen.add(code);
    }

    return seen.length;
  }
}
void main() {
  var sol = Solution();
  print(sol.uniqueMorseRepresentations(["gin", "zen", "gig", "msg"])); 
}
// This Dart code calculates the number of unique Morse code representations for a given list of words. 
// It first initializes a list morse containing the Morse code for each letter of the alphabet from 'a' to 'z'.
// Then, it iterates through each word in the input words list. For every word, it constructs its corresponding Morse code by concatenating the Morse representations of its individual characters.
// Finally, it adds this generated Morse code to a Set called seen, which automatically handles duplicates. 
// The function then returns the total number of unique Morse code transformations by returning the length of the seen set.