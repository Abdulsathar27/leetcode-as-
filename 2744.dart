class Solution {
  int maximumNumberOfStringPairs(List<String> words) {
    int answers = 0;
    int n = words.length;

    for (int i = 0; i < n; i++) {
      for (int j = i + 1; j < n; j++) {
        if (words[i][0] == words[j][1] && words[i][1] == words[j][0]) {
          answers++;
        }
      }
    }
    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.maximumNumberOfStringPairs(["ab", "ba", "cd", "dc", "aa"]));
}

// This Dart program counts how many pairs of strings in a list are reverses of each other.
// Inside the maximumNumberOfStringPairs function, 
// it uses two nested loops: the outer loop picks one string,
// and the inner loop compares it with every string that comes after it.
// For each pair, it checks if the first character of one string matches the second character of the other and vice versa.
// If both conditions are true, it means the strings are reverses (like "ab" and "ba"), and the counter answers increases by one.
// For the input ["ab", "ba", "cd", "dc", "aa"], there are two such reverse pairs — "ab"-"ba" and "cd"-"dc" — so the program prints
// 2 as the output.