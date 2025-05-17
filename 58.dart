class Solution {
  int lengthOfLastWord(String s) {
    s = s.trim(); // remove trailing spaces
    if (s.isEmpty) return 0;
    return s.split(' ').last.length;
}
}