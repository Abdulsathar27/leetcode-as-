    class Solution {
    bool isPalindrome(String s) {
    String clean = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
        return clean == clean.split('').reversed.join('');
        
    }
    }