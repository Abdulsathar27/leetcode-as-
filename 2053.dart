class Solution {
  String kthDistinct(List<String> arr, int k) {
    final Map<String, int> count = {};

    
    for (final str in arr) {
      count[str] = (count[str] ?? 0) + 1;
    }

    
    for (final str in arr) {
      if (count[str] == 1 && --k == 0) {
        return str;
      }
    }

    
    return '';
  }
}
void main() {
  final solution = Solution();

  List<String> arr = ['a', 'b', 'a', 'c', 'd', 'b'];
  int k = 2;

  print(solution.kthDistinct(arr, k)); 
}

// This Dart code finds the kth distinct string in a list.
// It first iterates through the input list arr to populate a frequency map (count) for each string.
// Then, it performs a second iteration over arr to maintain the original order.
// In this second loop, it checks each string's count; if the count is 1 (meaning it's distinct), it decrements k.
// The code returns the string when k becomes 0. If k never reaches zero, it means there are fewer than k distinct strings,
// and an empty string is returned.