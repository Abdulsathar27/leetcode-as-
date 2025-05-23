class Solution {
  String findTheDifference(String s, String t) {
    dynamic sum =0;
    for(var i = 0; i < t.length; i++)
    sum += t.codeUnitAt(i); // add Unicode code unit of t[i] to sum 
    // ( codeUnitAt gives you the numeric value of the character.  )
    for(var j = 0; j <s.length; j++)
    sum -= s.codeUnitAt(j);
    //Subtracts the code Unit of s[j] from sum . 
    return String.fromCharCode(sum);
  }
}
