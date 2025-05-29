class Solution {
  String reverseWords(String s) {
    List<String> words = s.split(' ');
    List<String> reversedWords = words.map((word) => word.split('').reversed.join()).toList();
    return reversedWords.join(' ');
  }
}
void main() {
  String input = "Let's reverse every word";
  Solution sol = Solution();
  String output = sol.reverseWords(input);
  print(output);
}

// In order to reverse every word in a given text, this Dart code defines a Solution class.
//  To get started, the input string is first divided into separate words. Then, one by one, it flips each word's characters. 
// It then reassembles these words in reverse, keeping their original order, to create the output string.