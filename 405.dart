class Solution {
  String toHex(int num) {
    if (num == 0) return "0";
    const hex = [
      '0','1','2','3','4','5','6','7',
      '8','9','a','b','c','d','e','f'
    ];
    String ans = "";
    int n = num & 0xffffffff;  
    while (n != 0) {
      ans += hex[n & 0xf];
      n >>= 4;
    }
    return ans.split('').reversed.join();
  }
}

// This Dart program converts an integer into its hexadecimal string representation while correctly handling negative values.
// It first checks for the special case where the number is zero, immediately returning "0" since no conversion is needed.
// To safely process negative numbers, it applies a bitmask num & 0xffffffff,
// which converts the value into its 32-bit unsigned form and prevents an infinite loop during bit shifting.
// The loop repeatedly extracts the lowest four bits using n & 0xf, maps that value to the corresponding hexadecimal character,
// and then shifts the number right by four bits to continue the conversion.
// Finally, it reverses the collected characters to form the correct hexadecimal string and returns the result.