class Solution {
  String replaceDigits(String s) {
    return List.generate(
      s.length,
      (i) => i.isOdd
          ? String.fromCharCode(s.codeUnitAt(i - 1) + int.parse(s[i]))
          : s[i],
    ).join();
  }
}

void main() {
  Solution solution = Solution();

  String input = "a1c1e1";
  String output = solution.replaceDigits(input);

  print("Input: $input");
  print("Output: $output");
}

// This Dart code replaces every digit in a string with a new character.
// It uses a List.generate function to build the new string character by character.
// For each character at an odd index i, it calculates a new character by taking the character at the preceding even index i-1,
// getting its Unicode value (codeUnitAt), and adding the integer value of the digit at index i.
// For characters at even indices, it keeps them as they are.
// Finally, it joins all the new characters to form the result.