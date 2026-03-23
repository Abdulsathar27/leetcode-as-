class Solution {
  bool judgeCircle(String moves) {
    int right = 0;
    int up = 0;

    for (int i = 0; i < moves.length; i++) {
      var move = moves[i];

      switch (move) {
        case 'R':
          right++;
          break;
        case 'L':
          right--;
          break;
        case 'U':
          up++;
          break;
        case 'D':
          up--;
          break;
      }
    }

    return right == 0 && up == 0;
  }
}
void main() {
  Solution sol = Solution();

  print(sol.judgeCircle("UD"));     
  print(sol.judgeCircle("LL"));    
  print(sol.judgeCircle("URDL"));   
}