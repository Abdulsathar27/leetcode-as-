class Solution {
  int daysBetweenDates(String date1, String date2) {
    DateTime d1 = DateTime.parse(date1);
    DateTime d2 = DateTime.parse(date2);

    return d1.difference(d2).inDays.abs();
  }
}

void main() {
  Solution sol = Solution();

  print(sol.daysBetweenDates("2019-06-29", "2019-06-30")); // 1
  print(sol.daysBetweenDates("2020-01-15", "2019-12-31")); // 15
}