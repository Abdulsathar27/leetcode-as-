class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    int count = 0;
    for (var h in hours) {
      if (h >= target) {
        count++;
      }
    }
    return count;
  }
}

void main() {
  Solution s = Solution();
  print(s.numberOfEmployeesWhoMetTarget([5, 8, 6, 2, 10], 6));
}


// This Dart program counts how many employees have worked hours greater than or equal to a given target number.
// In the numberOfEmployeesWhoMetTarget function, it loops through each element in the hours list using a for-in loop. 
// For every hour value h, it checks whether h >= target; if true, it increases the count by one. After checking all employees,
// it returns the total count of those who met or exceeded the target.
// For example, in [5, 8, 6, 2, 10] with a target of 6, the employees who worked 8, 6, and 10 hours qualify,
// so the output is 3.