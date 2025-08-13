class Solution {
  String freqAlphabets(String s) {
    StringBuffer ans = StringBuffer();
    int i = 0;

    while (i < s.length) {
      if (i + 2 < s.length && s[i + 2] == '#') {
        int num = int.parse(s.substring(i, i + 2));
        ans.write(String.fromCharCode(num + 'a'.codeUnitAt(0) - 1));
        i += 3; 
      } else {
        int num = int.parse(s[i]);
        ans.write(String.fromCharCode(num + 'a'.codeUnitAt(0) - 1));
        i += 1; 
      }
    }

    return ans.toString();
  }
}
void main() {
  final sol = Solution();
  
  print(sol.freqAlphabets("10#11#12")); 
  print(sol.freqAlphabets("1326#"));    
}


// This Dart code translates a string of digits and '#' symbols into a standard alphabet string.
// It iterates through the input string using a while loop. If it finds a two-digit number followed by a '#',
// it parses the two digits as a number, converts it to a character ('a' plus the number minus 1), and appends it to the result. 
// Otherwise, it assumes a single-digit number, converts it to a character in the same way, and appends it.
// It uses a StringBuffer for efficient string building.