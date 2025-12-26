class Solution {
  int calPoints(List<String> operations) {
    List<int> scores = [];

    for (String op in operations) {
      if (op == "+") {
        scores.add(scores[scores.length - 1] + scores[scores.length - 2]);
      } else if (op == "D") {
        scores.add(scores.last * 2);
      } else if (op == "C") {
        scores.removeLast();
      } else {
        scores.add(int.parse(op));
      }
    }

    int sum = 0;
    for (int s in scores) {
      sum += s;
    }
    return sum;
  }
}

void main() {
  Solution s = Solution();
  print(s.calPoints(["5","2","C","D","+"])); // 30
}

// This Dart program calculates the total score of a baseball game based on a list of operations that modify previous scores.
// It uses a list called scores to keep track of all valid round scores as they are processed.
// When the operation is "+", it adds the sum of the last two scores; "D" doubles the previous score;
// and "C" removes the most recent score. If the operation is a number,
// it is converted to an integer and added directly to the list.
// After all operations are processed, the program sums up the values in scores and returns the final total score.
