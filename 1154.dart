class Solution {
  bool isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }

  int dayOfYear(int year, int month, int day) {
    List<int> days = [
      31,
      isLeapYear(year) ? 29 : 28,
      31, 30, 31, 30,
      31, 31, 30, 31, 30, 31
    ];

    int sum = days.sublist(0, month - 1).fold(0, (a, b) => a + b);

    return sum + day;
  }
}
void main() {
  Solution s = Solution();
  print(s.dayOfYear(2024, 1, 1)); 
  print(s.dayOfYear(2024, 3, 1));
}
// This Dart code calculates the day of the year for a given date.
// It includes an isLeapYear helper function that correctly identifies leap years based on standard rules. 
// The dayOfYear function then uses a list days to store the number of days in each month,
// adjusting February's days for leap years. 
// It calculates the sum of days in preceding months using sublist and fold, 
// and finally adds the given day to this sum to get the day of the year.