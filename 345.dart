class Solution {
  String reverseVowels(String s) {
    List<String> chars = s.split('');
    const String vowels = 'aeiouAEIOU';
    int l = 0;
    int r = chars.length - 1;

    while (l < r) {
      while (l < r && !vowels.contains(chars[l])) {
        l++;
      }
      while (l < r && !vowels.contains(chars[r])) {
        r--;
      }

      // Swap only if both are vowels
      if (l < r) {
        String temp = chars[l];
        chars[l] = chars[r];
        chars[r] = temp;

        l++;
        r--;
      }
    }

    return chars.join('');
  }
}

void main() {
  var solution = Solution();
  String input = "leetcode";
  String result = solution.reverseVowels(input);
  print(result); // Output: leotcede
}



// This Dart code defines a Solution class with a method reverseVowels that reverses only the vowels within a given string. 
// It converts the input string into a list of characters for mutability and initializes two pointers, l and r, at the beginning and end of the list, respectively. 
// The code then iteratively moves l forward and r backward, skipping over non-vowel characters until both pointers land on vowels. 
// Once two vowels are found, their positions are swapped, and the pointers continue moving inward. 
// This process ensures that only vowels are reversed while maintaining the positions of all other characters, finally joining the modified character list back into a string.