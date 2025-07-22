void printMaxDepth(String s) {
  int answers = 0;
  int opened = 0;

  for (var a in s.split('')) {
    if (a == '(') {
      opened++;
      answers = answers > opened ? answers : opened;
    } else if (a == ')') {
      opened--;
    }
  }

  print("Maximum Depth: $answers");
}
void main() {
  printMaxDepth("(1+(2*3)+((8)/4))+1");  
}

// This Dart code calculates the maximum nesting depth of parentheses within a given string.
// It initializes answers to store the maximum depth found and opened to track the current nesting level.
// The code iterates through each character of the input string: if an opening parenthesis
// ( is encountered, opened is incremented, and answers is updated if opened exceeds the current maximum. If a closing parenthesis )
// is encountered, opened is decremented. Finally, the calculated answers (maximum depth) is printed.