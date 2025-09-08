class Solution {
  int minimumMoves(String s) {
    int i = 0, n = s.length, count = 0;

    while (i < n) {
      if (s[i] == '0') {
        i++;
      } else {
        count++;
        i += 3;
      }
    }
    return count;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.minimumMoves("110"));   
  print(sol.minimumMoves("11111")); 
}

// This Dart code calculates the minimum number of moves to convert a binary string s to all zeros.
// It iterates through the string using a while loop. If it encounters a '0', it simply moves to the next character.
// If it finds a '1', it increments a counter count and then skips the next two characters by incrementing the index i by 3.
// This is because a single move can flip a group of three consecutive characters, 
// effectively addressing the '1' and its immediate neighbors. The final count represents the minimum moves required.
