import 'dart:math';

class Solution {
  List<String> commonChars(List<String> words) {
    List<String> answer = [];
    List<int> commonCount = List.filled(26, 1 << 31); // like INT_MAX

    for (String word in words) {
      List<int> count = List.filled(26, 0); // Frequency count for this word

      for (int i = 0; i < word.length; i++) {
        int index = word.codeUnitAt(i) - 'a'.codeUnitAt(0);
        count[index]++;
      }

      for (int i = 0; i < 26; i++) {
        commonCount[i] = min(commonCount[i], count[i]);
      }
    }

    for (int i = 0; i < 26; i++) {
      for (int j = 0; j < commonCount[i]; j++) {
        answer.add(String.fromCharCode('a'.codeUnitAt(0) + i));
      }
    }

    return answer;
  }
}
void main() {
  var sol = Solution();
  print(sol.commonChars(["bella", "label", "roller"])); 

}

// This Dart code finds all characters that appear in every string within a given list of words, including duplicates. 
// It initializes a commonCount list to store the minimum frequency of each character across all words, starting with a very large number for each.
// For each word, it calculates the frequency of its characters in a temporary count list, 
// then updates commonCount by taking the minimum frequency for each character seen so far.
// Finally, it iterates through commonCount, adding each character to the answer list as many times as its minimum frequency dictates, 
// effectively gathering all common characters with their shared occurrences.