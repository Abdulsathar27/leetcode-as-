class Solution {
  int countAsterisks(String s) {
    int k = 0;       
    int answers = 0; 
    for (var c in s.split('')) {
      if (c == '|') {
        k++;
      }

      
      if (k % 2 == 0 && c == '*') {
        answers++;
      }
    }
    return answers;
  }
}
void main() {
  var sol = Solution();
  print(sol.countAsterisks("l|*e*et|c**o|*de|")); 
  print(sol.countAsterisks("yo|uar|e**|b|e***au|tifu|l")); 
}
// The countAsterisks method uses a simple state machine implemented with a counter k to 
// track whether the code is currently "inside" a pair of vertical bars or "outside."

// Logic Explanation
// State Tracking (k):

// The variable k is initialized to 0.

// Every time a vertical bar (|) is encountered, k is incremented.

// When k is even (0,2,4,…), it means the code is outside of a pair of bars.

// When k is odd (1,3,5,…), it means the code is inside a pair of bars.

// Counting Asterisks (answers):

// An asterisk is only counted if the state is "outside" (i.e., k % 2 == 0).

// The final count in answers is the total number of asterisks that appear outside any bar-delimited segments.