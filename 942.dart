void printDiStringMatch(String s) {
  List<int> ans = [];
  int mn = 0;
  int mx = s.length;

  for (var c in s.split('')) {
    ans.add(c == 'I' ? mn++ : mx--);
  }
  ans.add(mn); // Final number

  print("Matched List: $ans");
}

void main() {
  printDiStringMatch("IDID"); 
}
// This Dart code constructs a list of integers based on a string s composed of 'I' and 'D' characters.
// It initializes an empty ans list, a mn (minimum) pointer to 0, and an mx (maximum) pointer to the length of the string.
// The code iterates through each character of s: if the character is 'I', it appends the current mn value to ans and increments mn;
// if it's 'D', it appends the current mx value to ans and decrements mx.
// Finally, after the loop, the last remaining mn value is appended to ans, and the resulting list is printed.