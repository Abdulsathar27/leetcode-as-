class Solution {
  int countKeyChanges(String s) {
    int ans = 0;
    for (int i = 1; i < s.length; i++) {
      if (s[i].toLowerCase() != s[i - 1].toLowerCase()) {
        ans++;
      }
    }
    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.countKeyChanges("aAbB")); // Output: 3
}

// This Dart program counts how many times consecutive characters in a string change,
// ignoring case differences. Inside the countKeyChanges function,
// it starts looping from the second character and compares each one with the previous 
// character after converting both to lowercase using .toLowerCase(). 
// If they are different, it means there’s a change in the sequence,
// so the counter ans increases by one. This way, both uppercase and
// lowercase letters of the same kind (like 'a' and 'A') are treated as the same character.
// For example, in "aAbB", the transitions are a → A (same letter), A → b (change), and b → B 
// (same letter), giving a total of 3 key changes, so the output is 3.