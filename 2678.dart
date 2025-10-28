class Solution {
  int countSeniors(List<String> details) {
    int count = 0;
    for (int i = 0; i < details.length; i++) {
      int age = int.parse(details[i].substring(11, 13));
      if (age > 60) {
        count++;
      }
    }
    return count;
  }
}

void main() {
  Solution s = Solution();
  print(s.countSeniors(["12345678901270X", "98765432101265X"]));
}

// This Dart program counts how many people in a list are older than 60 based on
// encoded string details. Each string contains information where the age is stored 
// specifically in the 12th and 13th characters (index 11 and 12).
// Inside the loop, the program extracts those two characters using substring(11, 13)
// and converts them into an integer using int.parse(). 
// It then checks whether the extracted age is greater than 60, and if so,
// increments the count. Finally, it returns the total count, 
// and for the given example, both people have ages 70 and 65, so the output is 2.