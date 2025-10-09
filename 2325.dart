class Solution {
  String decodeMessage(String key, String message) {
    Map<String, String> mapping = {};
    mapping[' '] = ' '; 

    int currentChar = 'a'.codeUnitAt(0);

    
    for (var c in key.split('')) {
      if (c != ' ' && !mapping.containsKey(c)) {
        mapping[c] = String.fromCharCode(currentChar);
        currentChar++;
      }
    }


    String decoded = '';
    for (var c in message.split('')) {
      decoded += mapping[c] ?? ' ';
    }

    return decoded;
  }
}

void main() {
  var sol = Solution();
  print(sol.decodeMessage(
      "the quick brown fox jumps over the lazy dog", "vkbs bs t suepuv"));
 
}

// Decoding Process
// Creating the Substitution Map (Cipher):

// A mapping (HashMap) is created to store the character substitutions. It is pre-populated with a space mapping ' ' : ' '.

// The variable currentChar is initialized to the Unicode value of 'a' to keep track of the next alphabetical character to 
// use for decoding.

// The code iterates through the key string. The first time a unique non-space character is encountered, 
// it is mapped sequentially to a lowercase letter:

// The first unique non-space character in key maps to 'a'.

// The second maps to 'b', and so on, until all 26 letters are used.

// Decoding the Message:

// The code then iterates through the message string.

// For each character c in the message, it looks up the corresponding decoded character in the mapping.

// The result of the lookup, mapping[c], is guaranteed to exist because the problem implies all message characters 

// (including spaces) will be in the established mapping. The null-coalescing operator (?? ' ') acts as a fallback, 

// although for valid inputs, it only confirms the space mapping.

// The decoded character is appended to the decoded string.