class Solution {
  String addStrings(String num1, String num2) {
    var number1 = BigInt.parse(num1);
    var number2 = BigInt.parse(num2);

    var sum =(number1 + number2);
    return sum.toString();

    
  }
}