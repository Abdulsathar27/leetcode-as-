class Solution {
  String reformatDate(String date) {
    const Map<String, String> monthMap = {
      'Jan': '01',
      'Feb': '02',
      'Mar': '03',
      'Apr': '04',
      'May': '05',
      'Jun': '06',
      'Jul': '07',
      'Aug': '08',
      'Sep': '09',
      'Oct': '10',
      'Nov': '11',
      'Dec': '12',
    };

    List<String> parts = date.trim().split(RegExp(r'\s+'));

    String dayDigits = parts[0].replaceAll(RegExp(r'[^0-9]'), '');
    String day = dayDigits.length == 1 ? '0$dayDigits' : dayDigits;

    String monthKey = parts[1];
    String? month = monthMap[monthKey];

    if (month == null) {
      return "";
    }

    String year = parts[2];
    return "$year-$month-$day";
  }
}

void main() {
  Solution s = Solution();
  print(s.reformatDate("20th Oct 2052"));
  print(s.reformatDate("6th Jun 1933"));
}
// This Dart program reformats a date string from the format "Day Month Year" to "YYYY-MM-DD".
// It uses a map to convert month abbreviations to their corresponding two-digit numerical representations.
// The program extracts the day, month, and year from the input string, ensuring that the day is always two digits by adding a leading zero if necessary.
// Finally, it constructs and returns the reformatted date string.
// If the month abbreviation is invalid, it returns an empty string.
// The main function demonstrates the usage of the reformatDate method with example inputs.
