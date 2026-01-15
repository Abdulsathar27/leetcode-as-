
class Solution {
  String sortString(String s) {
    String ans = '';
    List<int> count = List.filled(26, 0);

    for (int i = 0; i < s.length; i++) {
      count[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    while (ans.length < s.length) {
      // increasing order
      for (int i = 0; i < 26; i++) {
        if (count[i] == 0) continue;
        ans += String.fromCharCode('a'.codeUnitAt(0) + i);
        count[i]--;
      }

      // decreasing order
      for (int i = 25; i >= 0; i--) {
        if (count[i] == 0) continue;
        ans += String.fromCharCode('a'.codeUnitAt(0) + i);
        count[i]--;
      }
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.sortString("aaaabbbbcccc")); // abccbaabccba
}


// This Dart program rearranges a string by repeatedly picking characters in increasing 
// and then decreasing alphabetical order until all characters are used. 
// It begins by counting the frequency of each lowercase letter using an array of size 26.
// While the result string is shorter than the original, it first loops from 'a' to 'z', 
// appending each available character once and decreasing its count. Then it loops from 'z' back to 'a',
// again appending each available character once. This back-and-forth process continues until all characters are placed,
// producing the required zigzag alphabetical pattern. For example, the input "aaaabbbbcccc" is transformed into "abccbaabccba".