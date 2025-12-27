
class Solution {
  String licenseKeyFormatting(String s, int k) {
    List<String> temp = [];
    int count = 0;

    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] == '-') continue;

      if (count == k) {
        temp.add('-');
        count = 0;
      }

      temp.add(s[i].toUpperCase());
      count++;
    }

    return temp.reversed.join('');
  }
}

void main() {
  Solution sol = Solution();
  print(sol.licenseKeyFormatting("2-5g-3-J", 2)); // 2-5G-3J
}


// This Dart program reformats a license key string so that characters are grouped into blocks of size k,
// separated by hyphens, and all letters are converted to uppercase.
// It processes the string from right to left to make grouping easier,
// skipping any existing hyphens along the way. A counter keeps track of how many characters have been added to
// the current group, and once it reaches k, a new hyphen is inserted.
// Each valid character is added to a temporary list in uppercase form, ensuring consistent formatting.
// Finally, the list is reversed and joined to produce the correctly ordered, formatted license key string.