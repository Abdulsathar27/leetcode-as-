
class Solution {
  String reversePrefix(String s, int k) {
    List<String> chars = s.split('');
    chars.setRange(0, k, chars.sublist(0, k).reversed);
    return chars.join();
  }
}

void main() {
  Solution sol = Solution();
  print(sol.reversePrefix("abcdefg", 3)); 
}

// This Dart program reverses only the first k characters of a string while keeping the rest unchanged.
// It starts by converting the string into a list of characters so that individual positions can be modified easily.
// Using sublist(0, k).reversed, it creates a reversed version of the prefix and then replaces the original 
// first k characters with this reversed sequence using setRange.
// After updating the list, it joins the characters back into a single string.
// For example, when "abcdefg" is given with k = 3, only "abc" is reversed to "cba", resulting in "cbadefg".