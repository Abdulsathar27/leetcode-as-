class Solution {
  List<List<int>> largeGroupPositions(String s) {
    int n = s.length;
    List<List<int>> answers = [];

    int i = 0;
    while (i < n) {
      int j = i;
      while (j < n && s[j] == s[i]) {
        j++;
      }

      if (j - i >= 3) {
        answers.add([i, j - 1]);
      }

      i = j;
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.largeGroupPositions("abbxxxxzzy")); 
  print(s.largeGroupPositions("abc"));       
  print(s.largeGroupPositions("aaa"));   
}

// This Dart program finds all large groups in a string, 
// where a large group is defined as three or more identical consecutive characters. 
// It uses two pointers, i and j, to scan the string and identify continuous segments of the same character.
// For each segment, j moves forward until a different character is found, while i marks the starting index of that group.
// If the length of the group (j - i) is at least 3, the start and end indices of that group are added to the result list.
// The pointer i is then moved to j to continue scanning the rest of the string. 
// For example, in "abbxxxxzzy", the substring "xxxx" forms a large group from index 3 to 6, so the output is [[3, 6]].

