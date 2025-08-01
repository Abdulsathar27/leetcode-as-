class Solution {
  bool checkIfPangram(String sentence) {
    return sentence
            .split('')
            .toSet()
            .where((char) => char.codeUnitAt(0) >= 'a'.codeUnitAt(0) && char.codeUnitAt(0) <= 'z'.codeUnitAt(0))
            .length == 26;
  }
}
void main() {
  Solution solution = Solution();

  String input = "thequickbrownfoxjumpsoverthelazydog";
  bool result = solution.checkIfPangram(input);

  print("Input: $input");
  print("Is pangram? $result"); 
}
// This Dart code determines whether a given sentence is a pangram,
// meaning it contains every letter of the English alphabet at least once.
// The checkIfPangram method accomplishes this in a single line of chained operations.
// It first splits the string into a list of characters,
// converts this list to a Set to get a list of unique characters,
// and then filters this set to include only lowercase English alphabetic characters.
// Finally, it checks if the length of the resulting filtered set is exactly 26,
// returning true if it is a pangram and false otherwise.