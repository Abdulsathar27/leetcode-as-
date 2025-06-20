class Solution {

  String intToRoman(int num) {
    const List<String> M = ["", "M", "MM", "MMM"];
    const List<String> C = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
    const List<String> X = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
    const List<String> I = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];

    return M[num ~/ 1000] +
           C[(num % 1000) ~/ 100] +
           X[(num % 100) ~/ 10] +
           I[num % 10];
  }

  void printRoman(int num) {
    String roman = intToRoman(num);
    print("Roman numeral: $roman");
  }
}

void main() {
  Solution solution = Solution();
  String roman = solution.intToRoman(1987);
  print("Returned Roman: $roman");
  solution.printRoman(2024); 
}
// This Dart code converts an integer to its Roman numeral representation.
// The intToRoman method uses four constant lists, M, C, X, and I, which store Roman numeral strings for thousands,
// hundreds, tens, and ones, respectively. It then calculates the corresponding digit for each place value 
// (thousands, hundreds, tens, and ones) using integer division (~/) and the modulo operator (%), 
// and uses these digits as indices to retrieve the correct Roman numeral string from each list. 
// These strings are then concatenated to form the final Roman numeral. The printRoman method simply calls 
// intToRoman and prints the result.