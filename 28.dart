class Solution {
  int strStr(String haystack, String needle) {
    if(haystack == needle) {
        return 0;
    }
    if(needle.isEmpty || haystack.isEmpty || needle.length > haystack.length) {
        return -1;
    }
    for(int i = 0; i <= haystack.length - needle.length; i++) {
        String subString = haystack.substring(i, i + needle.length);
        if(subString == needle) {
            return i;
        }
    }
    return -1;
  }
}