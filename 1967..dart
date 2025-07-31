class Solution {
  int numOfStrings(List<String> patterns, String word) {
    int count = 0;

    for (String pattern in patterns) {
      if (word.contains(pattern)) {
        count++;
      }
    }

    return count;
  }
}

void main() {
  Solution solution = Solution();

  List<String> patterns = ['a', 'abc', 'bc'];
  String word = 'abc';

  int result = solution.numOfStrings(patterns, word);

  print("Patterns: $patterns");
  print("Word: $word");
  print("Number of patterns found: $result");
}

// This Dart code defines a Solution class with a numOfStrings method that counts how many strings from a given patterns
// list are substrings of a target word. The method initializes a count variable to zero. 
// It then iterates through each pattern in the patterns list. 
// For each pattern, it uses the word.contains(pattern) method to check if the pattern exists as a substring within the word.
// If it does, the count is incremented. Finally, the total count of found patterns is returned.