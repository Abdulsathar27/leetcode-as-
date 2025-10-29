class Solution {
  String makeSmallestPalindrome(String s) {
    List<String> array = s.split('');
    int i = 0, j = array.length - 1;

    while (i < j) {
      if (array[i].compareTo(array[j]) > 0) {
        array[i] = array[j];
      } else {
        array[j] = array[i];
      }
      i++;
      j--;
    }

    return array.join('');
  }
}

void main() {
  Solution s = Solution();
  print(s.makeSmallestPalindrome("egcfe"));
}


// This Dart program creates the smallest possible palindrome from a given string by only replacing characters.
// It converts the string into a list of characters and uses two pointers: one starting from the left (i) and one from the right (j).
// For each pair of characters, it compares them and replaces the larger one with the smaller one to ensure 
// the lexicographically smallest result while maintaining symmetry. 
// The pointers move toward the center until the entire string becomes a palindrome.
// For example, the input "egcfe" transforms into "efcfe",
// which is the smallest palindrome that can be formed by modifying characters in mirrored positions.