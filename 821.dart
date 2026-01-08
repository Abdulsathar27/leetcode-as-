class Solution {
  List<int> shortestToChar(String s, String c) {
    int n = s.length;
    List<int> answers = List.filled(n, 0);
    int prev = -n;

    // Left to right
    for (int i = 0; i < n; i++) {
      if (s[i] == c) {
        prev = i;
      }
      answers[i] = i - prev;
    }

    // Your accepted second pass
    for (int i = prev - 1; i >= 0; i--) {
      if (s[i] == c) {
        prev = i;
      }
      answers[i] =
          answers[i] < (prev - i) ? answers[i] : (prev - i);
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.shortestToChar("loveleetcode", "e"));
}


// This Dart program computes the shortest distance from each character in a string to a given target character.
// It first makes a left-to-right pass, tracking the most recent position of the target character and storing 
// the distance from that position to each index. 
// This ensures that every character knows how far it is from the closest target on its left side. 
// Then, it performs a right-to-left pass to check whether there is a closer occurrence of the target on the right side and updates 
// the distance if it is smaller.
// By combining the results of both passes, the program guarantees the minimum distance to 
// the target character for every position in the string.