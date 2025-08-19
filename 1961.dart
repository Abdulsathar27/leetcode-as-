class Solution {
  bool isPrefixString(String s, List<String> words) {
    var ans = "";

    for (var word in words) {
      ans += word;
      if (ans == s) return true;
      if (ans.length > s.length) return false;
    }

    return false;
  }
}

void main() {
  var solution = Solution();
  print(solution.isPrefixString("iloveleetcode", ["i", "love", "leetcode", "apples"])); 
  print(solution.isPrefixString("iloveleetcode", ["apples", "i", "love", "leetcode"])); 
}

// This Dart code determines if a given string s can be formed by concatenating the initial elements of a list of words.
// The isPrefixString method iterates through the words list, incrementally building a string ans by appending each word. 
// In each step, it checks if ans is equal to s, returning true if a match is found. It also includes an optimization:
// if ans becomes longer than s at any point,
// it's impossible to form a prefix, so it returns false. If the loop completes without ans ever matching s, the method returns false.
