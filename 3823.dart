class Solution {
  String reverseByType(String s) {
    List<String> arr = s.split('');

    int i = 0;
    int j = arr.length - 1;

    bool isAlpha(String c) =>
        RegExp(r'[a-zA-Z]').hasMatch(c);

    // Reverse alphabet characters
    while (i < j) {
      while (i < arr.length && !isAlpha(arr[i])) {
        i++;
      }
      while (j >= 0 && !isAlpha(arr[j])) {
        j--;
      }

      if (i < j) {
        String temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
        i++;
        j--;
      }
    }

    i = 0;
    j = arr.length - 1;

    // Reverse non-alphabet characters
    while (i < j) {
      while (i < arr.length && isAlpha(arr[i])) {
        i++;
      }
      while (j >= 0 && isAlpha(arr[j])) {
        j--;
      }

      if (i < j) {
        String temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
        i++;
        j--;
      }
    }

    return arr.join();
  }
}

void main() {
  Solution s = Solution();
  print(s.reverseByType("a1b2c3"));
}


// This Dart program reverses characters in a string based on their type, handling alphabetic and non-alphabetic characters separately.
// It first converts the string into a list so characters can be swapped easily,
// then uses two pointers to reverse only the alphabet letters while leaving digits or symbols in their original positions.
// After completing that pass, it resets the pointers and performs a second pass to reverse only the non-alphabet characters, 
// this time ignoring letters. The helper function isAlpha checks whether a character is a letter using a regular expression.
// By doing two independent reversals, the program ensures letters swap only with letters and non-letters swap only with non-letters.
// For example, with "a1b2c3", the letters become "cba" in their respective positions and the digits become "321" in theirs,
// producing "c3b2a1".