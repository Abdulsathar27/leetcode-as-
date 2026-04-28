class Solution {
  List<String> uncommonFromSentences(String A, String B) {
    Map<String, int> count = {};

    // Combine both sentences
    List<String> words = (A + " " + B).split(' ');

    // Count frequency
    for (String word in words) {
      if (word.isEmpty) continue;
      count[word] = (count[word] ?? 0) + 1;
    }

    // Collect uncommon words
    List<String> ans = [];
    count.forEach((word, freq) {
      if (freq == 1) {
        ans.add(word);
      }
    });

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.uncommonFromSentences(
      "this apple is sweet",
      "this apple is sour"));
  // Output: [sweet, sour]

  print(sol.uncommonFromSentences(
      "apple apple",
      "banana"));
  // Output: [banana]
}