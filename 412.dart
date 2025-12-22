
class Solution {
  List<String> fizzBuzz(int n) {
    List<String> ans = [];

    for (int i = 1; i <= n; i++) {
      String s = '';
      if (i % 3 == 0) s += 'Fizz';
      if (i % 5 == 0) s += 'Buzz';
      ans.add(s.isEmpty ? i.toString() : s);
    }

    return ans;
  }
}

void main() {
  Solution s = Solution();
  print(s.fizzBuzz(15));
}

// This Dart program implements the classic FizzBuzz logic by generating a list of strings from 1 to n based on simple divisibility rules. 
// For each number, it starts with an empty string and appends "Fizz" if the number is divisible by 3 and "Buzz"
// if it is divisible by 5. If a number is divisible by both 3 and 5,
// the string becomes "FizzBuzz" because both conditions are applied.
//  When neither condition is met, the number itself is converted to a string and added to the list. 
// In the end, the function returns the full list, which neatly represents the FizzBuzz sequence up to n.