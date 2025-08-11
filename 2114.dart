import 'dart:math';

class Solution {
  int mostWordsFound(List<String> sentences) {
    int maxSpaceCount = 0;

    for (final s in sentences) {
      int spaceCount = s.split(' ').length - 1;
      maxSpaceCount = max(maxSpaceCount, spaceCount);
    }

    return maxSpaceCount + 1;
  }
}
void main() {
  final solution = Solution();

  List<String> sentences = [
    "Hello world",
    "Dart is fun and easy",
    "I love programming"
  ];

  print(solution.mostWordsFound(sentences)); 
}

// This Dart code calculates the maximum number of words found in a list of sentences.
// It initializes a maxSpaceCount variable to zero. It then iterates through each sentence in the sentences list,
// splitting each sentence by spaces to get the number of words. 
// The number of words is determined by s.split(' ').length, and the number of spaces is s.split(' ').length - 1.
// The code then finds the maximum number of spaces across all sentences. Finally,
// it returns maxSpaceCount + 1 to get the actual word count, since the number of words is always one more than the number of spaces.
