class Solution {
  String firstPalindrome(List<String> words) {
    var n = words.length;
    for (var i = 0; i < n; i++) {
      var l = 0, r = words[i].length - 1;
      while (l < r && words[i][l] == words[i][r]) {
        l++;
        r--;
      }
      if (l >= r) return words[i];     
      }
    return ""; 
  }
}

void main() {
  final solution = Solution();

  List<String> words = ['abc', 'car', 'ada', 'racecar', 'cool'];
  String result = solution.firstPalindrome(words);

  print('First palindrome: $result'); 
}

// This Dart code finds and returns the first palindromic string from a given list of words.
// It iterates through each word, using two pointers, l (left) and r (right), to check for palindromes.
// The while loop continues as long as l is less than r and the characters at those positions match.
// If the loop completes with l being greater than or equal to r, it means the word is a palindrome,
// and the function immediately returns it.
// If the entire list is checked without finding a palindrome, an empty string is returned.