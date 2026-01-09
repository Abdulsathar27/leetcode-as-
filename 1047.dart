
class Solution {
  String removeDuplicates(String s) {
    List<String> arr = s.split('');
    int k = 0;

    for (int i = 0; i < arr.length; i++) {
      arr[k] = arr[i];
      if (k > 0 && arr[k] == arr[k - 1]) {
        k--;
      } else {
        k++;
      }
    }

    return arr.sublist(0, k).join();
  }
}

void main() {
  Solution s = Solution();
  print(s.removeDuplicates("abbaca")); // ca
}

// This Dart program removes all adjacent duplicate characters from a string by simulating
// a stack using an array and an index pointer. 
// As it iterates through the characters, it places each character at position k,
// which represents the top of the stack. If the current character matches
// the previous one (arr[k] == arr[k - 1]), it means a duplicate pair is formed,
// so k is decremented to remove both characters. Otherwise, 
// k is incremented to keep the character in the result.
// This process continues in a single pass, efficiently handling cascading duplicates without extra data structures. 
// Finally, the program joins the valid portion of the array to return the cleaned string, so "abbaca" becomes "ca".