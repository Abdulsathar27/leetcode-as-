class Solution {
  int countWords(List<String> words1, List<String> words2) {
    int a = words1.length;
    int b = words2.length;
    int answers = 0;
    List<String> word = [];

    // pick words that appear exactly once in words1
    for (int i = 0; i < a; i++) {
      int c = 0;
      for (int j = 0; j < a; j++) {
        if (words1[i] == words1[j]) c++;
      }
      if (c == 1) word.add(words1[i]);
    }

    // check they appear exactly once in words2
    for (int i = 0; i < word.length; i++) {
      int d = 0;
      for (int j = 0; j < b; j++) {
        if (word[i] == words2[j]) {
          d++;
          if (d > 1) break;
        }
      }
      if (d == 1) answers++;
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.countWords(
    ["leetcode", "is", "amazing", "as", "is"],
    ["amazing", "leetcode", "is"]
  )); // 2
}

// This Dart program counts how many words appear exactly once in both input lists.
// It first scans words1 and collects only those words that occur exactly one time, ensuring duplicates are ignored from the start. 
// These unique words are stored in a temporary list called word. 
// Next, the program checks each of these words against words2, counting how many times
// they appear there and making sure they also occur exactly once. If a word satisfies 
// the “exactly once” condition in both lists, the answer counter is increased. Finally, 
// the function returns this count, which represents the number of words that are uniquely common to both lists.