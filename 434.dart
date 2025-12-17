int countSegments(String s) {
  return s.trim().isEmpty ? 0 : s.trim().split(RegExp(r'\s+')).length;
}
void main() {
  print(countSegments("Hello, my name is John")); // Output: 5
  print(countSegments("   ")); // Output: 0
  print(countSegments("One")); // Output: 1
}

// This Dart function counts how many words (segments) exist in a given string. 
// It first uses trim() to remove leading and trailing spaces, ensuring that extra whitespace does not affect the count.
// If the trimmed string is empty, it directly returns 0 because there are no words present.
// Otherwise, it splits the string using a regular expression \s+,
// which treats one or more spaces as a separator between words. 
// The length of the resulting list represents the total number of word segments in the string.