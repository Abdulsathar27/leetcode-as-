class Solution {
  bool lemonadeChange(List<int> bills) {
    int fives = 0;
    int tens = 0;

    for (int bill in bills) {
      if (bill == 5) {
        fives++;
      } else if (bill == 10) {
        fives--;
        tens++;
      } else { // bill == 20
        if (tens > 0) {
          tens--;
          fives--;
        } else {
          fives -= 3;
        }
      }

      if (fives < 0) {
        return false;
      }
    }

    return true;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.lemonadeChange([5,5,5,10,20])); // true
  print(sol.lemonadeChange([5,5,10,10,20])); // false
}