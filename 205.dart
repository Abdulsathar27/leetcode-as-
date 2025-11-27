class Solution {
  bool isIsomorphic(String s, String t) {
    List<int> mapS = List.filled(256, 0);
    List<int> mapT = List.filled(256, 0);

    for (int i = 0; i < s.length; i++) {
      int cs = s.codeUnitAt(i);
      int ct = t.codeUnitAt(i);

      if (mapS[cs] != mapT[ct]) return false;

      mapS[cs] = i + 1;
      mapT[ct] = i + 1;
    }

    return true;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isIsomorphic("egg", "add"));     // true
  print(sol.isIsomorphic("paper", "title")); // true
  print(sol.isIsomorphic("foo", "bar"));     // false
}

// This Dart program checks if two strings are isomorphic, meaning each character in the first string can be replaced to get
// the second string while preserving the order of characters. 
// The rule is that each character must map uniquely and consistently between the two strings.

// In the isIsomorphic function, two lists — mapS and mapT — are created to record the mapping positions for each character 
// (using ASCII values). For each character pair (s[i], t[i]), 
// the code checks whether both characters were last seen at the same position.
// If not, it means the mapping is inconsistent, and it returns false. Otherwise,
// it updates both maps with the current index (i + 1 ensures nonzero marking).