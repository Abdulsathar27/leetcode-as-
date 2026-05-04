class Solution {
  String makeGood(String s) {
    List<String> stack = [];

    for (int i = 0; i < s.length; i++) {
      String c = s[i];

      if (stack.isNotEmpty && isBadPair(stack.last, c)) {
        stack.removeLast();
      } else {
        stack.add(c);
      }
    }

    return stack.join();
  }

  bool isBadPair(String a, String b) {
    return a != b && a.toLowerCase() == b.toLowerCase();
  }
}

void main() {
  Solution sol = Solution();

  print(sol.makeGood("leEeetcode")); 
  print(sol.makeGood("abBAcC"));    
}