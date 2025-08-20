import 'dart:math';

class Solution {
  int minTimeToType(String word) {
    int answer = 0;
    String pointer = 'a';

    for (int i = 0; i < word.length; i++) {
      int clockwise = (word[i].codeUnitAt(0) - pointer.codeUnitAt(0)).abs();
      int counterclockwise = 26 - clockwise;
      answer += min(clockwise, counterclockwise) + 1;
      pointer = word[i];
    }

    return answer;
  }
}

void main() {
  var solution = Solution();
  print(solution.minTimeToType("abc"));   
  print(solution.minTimeToType("bza"));   
  print(solution.minTimeToType("zjpc"));  
}


// This Dart code calculates the minimum time to type a given word on a circular keyboard. 
// The minTimeToType method initializes a pointer to 'a' and an answer variable to zero. 
// It iterates through each character of the word. For each character,
// it calculates the minimum rotations required to move the pointer, 
// considering both clockwise and counter-clockwise directions.
// This is done by finding the minimum of the absolute difference in character codes and 26 minus that difference.
// This minimum rotation time is added to answer, along with an additional 1 for the key press. 
// The pointer is then updated to the current character, and the process repeats.