class Solution {
  String reverseOnlyLetters(String s) {
    var letters = s.replaceAll(RegExp(r'[^A-Za-z]'), '').split('').reversed.iterator;
  return s.split('').map((c) => RegExp(r'[A-Za-z]').hasMatch(c) ? (letters..moveNext()).current : c).join('');
    
  }
}
// RegExp(r'[^A-Za-z]'): A regular expression that matches everything except letters (A–Z, a–z).

// s.replaceAll(...): Removes all non-letter characters from the string.

// .split(''): Turns the remaining letters into a list of characters.

// .reversed: Reverses that list of letters.

// .iterator: Turns the list into an iterator so we can go through it one-by-one using .moveNext() and .current.

// 🟢 Example:
// If s = "a-bC-dEf-ghIj" →
// letters = [j, I, h, g, f, E, d, C, b, a] (as an iterator).


// s.split(''): Split original string into characters.

// .map((c) => ...): For each character c:

// If it’s a letter (RegExp(r'[A-Za-z]').hasMatch(c)):

// Move to the next letter in the letters iterator: (letters..moveNext()).current

// If it’s not a letter: just keep c unchanged.

// .join(''): Join all characters back into one string.