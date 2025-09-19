class Solution {
  int maximum69Number(int num) {
    String s = num.toString();

    
    List<String> chars = s.split('');

    for (int i = 0; i < chars.length; i++) {
      if (chars[i] == '6') {
        chars[i] = '9';
        break; 
      }
    }

    return int.parse(chars.join());
  }
}

void main() {
  var sol = Solution();
  print(sol.maximum69Number(9669)); 
  print(sol.maximum69Number(9996)); 
  print(sol.maximum69Number(9999)); 
}


// This Dart code finds the maximum possible number by changing at most one digit from '6' to '9' in the input integer num.
// The maximum69Number method first converts the integer to a string.
// It then iterates through the characters of the string.
// The first time it encounters a '6', it changes it to a '9' and immediately breaks out of the loop,
// since changing the leftmost '6' to a '9' will result in the largest possible number. Finally,
// it joins the characters back into a string and parses it into an integer to return the result.