class Solution {
  String removeOuterParentheses(String s) {
    var count = 0;
    var output = "";
    for (var i = 0; i < s.length; i++) {
      if (s[i] == '(') {
        if (count > 0) {
          output += s[i];
        }
        count++;
      } else if (s[i] == ')') {
        count--;
        if (count > 0) {
          output += s[i];
        }
      }
    }
    return output;
  }
}
void main() {
  var solution = Solution();
  var input = "(()())(())(()(()))";
  var result = solution.removeOuterParentheses(input);
  print("Input: $input");
  print("Output: $result");
}

// This Dart code defines a Solution class with a method removeOuterParentheses that processes a string containing balanced parentheses. 
// The method uses a counter to track the nesting level of parentheses. It iterates through the input string, 
// appending a parenthesis to the output string only if the current nesting level (represented by count) indicates 
// it's not an outermost parenthesis of a primitive valid parentheses string. This effectively removes the outermost layer from each such primitive component.