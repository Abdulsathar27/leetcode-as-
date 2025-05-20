class Solution {
  String reverseStr(String s, int k) {
    List<String> list= s.split('');
    for(var a = 0; a<list.length; a+=2*k){
        var last = (a + k < list.length)? a + k : list.length;
        list.setRange(a,last,list.sublist(a,last).reversed);
    }
    return list.join('');

    
  }
}