
class Solution {
  bool halvesAreAlike(String s) {
    Set<String> vowels = {
      'a', 'e', 'i', 'o', 'u',
      'A', 'E', 'I', 'O', 'U'
    };

    int vowelCount = 0;
    int midIndex = s.length ~/ 2;

    for (int i = 0; i < midIndex; i++) {
      String a = s[i];
      String b = s[midIndex + i];

      if (vowels.contains(a)) vowelCount++;
      if (vowels.contains(b)) vowelCount--;
    }

    return vowelCount == 0;
  }
}

void main() {
  Solution s = Solution();
  print(s.halvesAreAlike("book"));     
  print(s.halvesAreAlike("textbook")); 
}

// This Dart program checks whether the two halves of a string contain the same number of vowels.
// It first defines a set of vowels that includes both lowercase and uppercase letters,
// then calculates the midpoint of the string to divide it into two equal halves. 
// As it loops through the first half, it compares each character with the corresponding character in the second half. 
// For every vowel found in the first half, it increments a counter, and for every vowel found in the second half,
// it decrements the same counter. By the end of the loop, if the counter is zero,
// it means both halves have an equal number of vowels, so the function returns true; otherwise, it returns false.