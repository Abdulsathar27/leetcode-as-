class Solution {
  String reformatNumber(String number) {
    String ans = "";

    number = number.replaceAll('-', '');
    number = number.replaceAll(' ', '');

    int i = 0;

    for (i = 0; i + 4 < number.length; i += 3) {
      ans += number.substring(i, i + 3) + '-';
    }

    int countFinalDigits = number.length - i;

    if (countFinalDigits < 4) {
      ans += number.substring(i);
    } else {
      ans += number.substring(i, i + 2) +
          '-' +
          number.substring(i + 2);
    }

    return ans;
  }
}


void main() {
  Solution sol = Solution();
  print(sol.reformatNumber("1-23-45 6"));    
  print(sol.reformatNumber("123 4-567"));     
  print(sol.reformatNumber("123 4-5678"));    
}