class Solution {
  List<String> divideString(String s, int k, String fill) {
    List<String> answers = [];

    for (int i = 0; i < s.length; i += k) {
      answers.add(
        i + k > s.length
            ? s.substring(i) + fill * (i + k - s.length)
            : s.substring(i, i + k),
      );
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.divideString("abcdefghi", 3, "x"));
}

// This Dart program splits a string into groups of fixed length k, adding extra characters if
// the final group is shorter than required. It loops through the string in steps of k and extracts substrings of length
// k whenever possible. If the remaining characters at the end are fewer than k,
// it appends the fill character enough times to complete the group. Each resulting 
// group is added to a list in order. 
// The function finally returns this list of evenly sized strings,
// ensuring that all groups have exactly k characters.