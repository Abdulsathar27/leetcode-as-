class Solution {
  String mapWordWeights(List<String> words, List<int> weights) {
    String ans = "";

    for (int i = 0; i < words.length; i++) {
      String currWord = words[i];
      int currWeightOfWord = 0;

      for (int j = 0; j < currWord.length; j++) {
        int ind = currWord.codeUnitAt(j) - 'a'.codeUnitAt(0);
        currWeightOfWord += weights[ind];
      }

      currWeightOfWord %= 26;
      currWeightOfWord = 25 - currWeightOfWord;

      String currChar = String.fromCharCode(
        'a'.codeUnitAt(0) + currWeightOfWord,
      );

      ans += currChar;
    }

    return ans;
  }
}
void main() {
  Solution sol = Solution();

  List<String> words = ["abc", "bcd"];
  List<int> weights = List.generate(26, (i) => i); 

  print(sol.mapWordWeights(words, weights));
}