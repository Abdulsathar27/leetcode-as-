class Solution {
  List<String> findWords(List<String> words) {
    final rows = ['qwertyuiop', 'asdfghjkl', 'zxcvbnm'];
    return words.where((w) => rows.any((r) => w.toLowerCase().split('').every(r.contains))).toList();
  }
}
void main() {
  var res = Solution().findWords(["Hello", "Alaska", "Dad", "Peace"]);
  print("Words in one row: $res");
}
// This Dart code efficiently identifies words that can be typed using characters from a single row of a standard QWERTY keyboard. 
// It works by checking each input word against three predefined strings representing the keyboard rows.
//  For a word to be included in the result, all its letters (converted to lowercase) must exclusively belong to one of these three rows. 
//  The main function then demonstrates this by filtering a sample list of words.