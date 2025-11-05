class Solution {
  bool isAcronym(List<String> words, String s) {
    if (words.length != s.length) {
      return false;
    }

    for (int i = 0; i < words.length; i++) {
      if (words[i][0] != s[i]) {
        return false; 
      }
    }

    return true; 
  }
}

void main() {
  Solution s = Solution();
  print(s.isAcronym(["afqcpzsx", "icenu"], "yi")); 
  print(s.isAcronym(["apple", "banana", "cat"], "abc")); 

}

// This Dart program checks whether a given string s is an acronym formed from the first letters of each word in a list.
// The function isAcronym first ensures that the number of words in the list matches the length of the string s;
// if not, it immediately returns false. Then it loops through each word,
// comparing the first character of each word (words[i][0]) with the corresponding character in s.
// If any character doesn’t match, it returns false right away.
// If all first letters match perfectly, it returns true. For example,
// ["apple", "banana", "cat"] and "abc" return true, while ["afqcpzsx", "icenu"] and "yi" 
// return false because their initials don’t align.
