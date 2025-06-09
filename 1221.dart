int balancedStringSplit(String s) {
  int res = 0;
  int track = 0;

  for (int i = 0; i < s.length; i++) {
    track += s[i] == 'R' ? 1 : -1;
    if (track == 0) {
      res++;
    }
  }

  return res;
}

void main() {
  String s = "RLRRLLRLRL";
  print(balancedStringSplit(s)); 
}