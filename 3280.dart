class Solution {
  String convertDateToBinary(String date) {
    List<String> parts = date.split('-');
    List<String> res = [];

    for (String part in parts) {
      int num = int.parse(part);
      String bin = num.toRadixString(2); 
      res.add(bin);
    }

    return res.join('-');
  }
}

void main() {
  Solution s = Solution();
  print(s.convertDateToBinary("2023-01-30"));
  
}


// This Dart program converts a date string from the format "YYYY-MM-DD" into its binary representation. 
// It first splits the date into year, month, and day using the hyphen as a separator. 
// Each part is then parsed into an integer and converted to binary using toRadixString(2). 
// The binary values are collected in a list to preserve the original order of the date components. 
// Finally, the binary parts are joined back together with hyphens to form the converted date string.