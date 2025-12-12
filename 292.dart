class Solution {
  bool canWinNim(int n) {
    return n % 4 != 0;
  }
}

void main() {
  Solution s = Solution();
  print(s.canWinNim(4));  
  print(s.canWinNim(1));  
}

// This Dart program determines whether a player can win the classic Nim game when starting with n stones,
// assuming both players play optimally. In Nim, each player can remove 1 to 3 stones on their turn,
// and the player who takes the last stone wins. The key insight is that any number of stones that is a multiple of 4
// guarantees a loss for the first player because no matter what they remove, they always leave a multiple of 4 
// for the opponent. Using this logic, the function simply checks whether n % 4 != 0,
// returning true if the player can win and false otherwise. For example,
// 4 stones result in a loss, while 1 stone guarantees a win.