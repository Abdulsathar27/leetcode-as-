class Solution {
  int minMovesToSeat(List<int> seats, List<int> students) {
    seats.sort();
    students.sort();

    int moves = 0;
    for (int i = 0; i < seats.length; i++) {
      moves += (seats[i] - students[i]).abs();
    }
    return moves;
  }
}

void main() {
  var sol = Solution();
  print(sol.minMovesToSeat([3,1,5], [2,7,4])); 
  print(sol.minMovesToSeat([4,1,5,9], [1,3,2,6])); 
}

// This Dart code calculates the minimum total number of moves to seat all students,
// where a move is one unit of horizontal travel.
// The minMovesToSeat method works by first sorting both the seats and students lists.
// This is the key insight,
// as matching the closest student to the closest seat will always yield the minimum number of moves.
// It then iterates through the sorted lists,
// and for each corresponding pair,
// it calculates the absolute difference between the seat position and the student's position,
// adding this difference to a moves counter. Finally, it returns the total accumulated moves.