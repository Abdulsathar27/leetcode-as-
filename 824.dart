class Solution {
  String toGoatLatin(String sentence) {
    List<String> words = sentence.split(' ');
    String ans = '';

    for (int i = 0; i < words.length; i++) {
      String word = words[i];
      if (i > 0) ans += ' ';

      if (_isVowel(word[0])) {
        ans += word;
      } else {
        ans += word.substring(1) + word[0];
      }

      ans += 'ma' + 'a' * (i + 1);
    }

    return ans;
  }

  bool _isVowel(String c) {
    return 'aeiouAEIOU'.contains(c);
  }
}

void main() {
  Solution s = Solution();
  print(s.toGoatLatin("I speak Goat Latin"));
}
// This Dart program converts a given sentence to "Goat Latin" by following specific transformation rules.
// It splits the sentence into words and processes each word based on whether it starts with a vowel or a consonant.
// If a word starts with a vowel, it remains unchanged; if it starts with a consonant, the first letter is moved to the end of the word.
// After this, "ma" is appended to the word, followed by a number of '  a's corresponding to the word's position in the sentence (1-based index).
// The program constructs the final transformed sentence by joining all the modified words with spaces and returns it.      
