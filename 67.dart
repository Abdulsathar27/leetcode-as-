class Solution {
  String addBinary(String a, String b) {
    
    int i = a.length - 1, j = b.length - 1, carry = 0;
  String result = '';
  
  for (; i >= 0 || j >= 0 || carry > 0; i--, j--) {
    int sum = carry;
    if (i >= 0 && a[i] == '1') sum += 1;
    if (j >= 0 && b[j] == '1') sum += 1;
    result = (sum % 2).toString() + result;
    carry = sum ~/ 2;
  }
  
  return result;
  }
}