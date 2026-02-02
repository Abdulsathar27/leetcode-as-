class Solution {
  String clearDigits(String s) {
    List<String> answers = [];

    for (var c in s.split('')) {
      if (RegExp(r'\d').hasMatch(c)) {
        if (answers.isNotEmpty) answers.removeLast();
      } else {
        answers.add(c);
      }
    }

    return answers.join();
  }
}

void main() {
  Solution s = Solution();
  print(s.clearDigits("cb34")); 
}
