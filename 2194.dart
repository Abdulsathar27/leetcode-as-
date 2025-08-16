class Solution {
  List<String> cellsInRange(String s) {
    List<String> answers = [];
    for (var char = s.codeUnitAt(0); char <= s.codeUnitAt(3); char++) {
      for (var i = int.parse(s[1]); i <= int.parse(s[4]); i++) {
        answers.add(String.fromCharCode(char) + i.toString());
      }
    }
    return answers;
  }
}
void main() {
  final sol = Solution();
  print(sol.cellsInRange("A1:C2"));
}

// This Dart code generates a list of all cell names within a given range, like "A1:C2".
// The cellsInRange method iterates through the range of column characters and row numbers separately.
// The outer loop iterates from the starting column character's Unicode value to the ending one.
// The inner loop iterates from the starting row number to the ending one. Inside the inner loop,
// it creates a string by combining the current column character and row number, 
// adding it to the answers list. The final list of cell names is then returned.