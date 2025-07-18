class Solution {
  List<int> frequencySort(List<int> nums) {
    Map<int, int> freq = {};
    for (var num in nums) {
      freq[num] = (freq[num] ?? 0) + 1;
    }

    
    nums.sort((a, b) {
      int fa = freq[a]!;
      int fb = freq[b]!;

      if (fa != fb) {
        return fa.compareTo(fb); 
      } else {
        return b.compareTo(a);   
      }
    });

    return nums;
  }
}
void main() {
  var sol = Solution();

  print(sol.frequencySort([1, 1, 2, 2, 2, 3]));      
  print(sol.frequencySort([2, 3, 1, 3, 2]));         
  print(sol.frequencySort([-1, 1, -6, 4, 5, -6, 1, 4, 1])); 
}
// This Dart code sorts a list of integers based on their frequency, 
// with elements of the same frequency sorted in descending order.
// First, it populates a freq map to count the occurrences of each number in the input list nums.
// Then, it sorts the nums list itself using a custom comparison function. This function prioritizes
// sorting by frequency in ascending order (fa.compareTo(fb)).
// If two numbers have the same frequency, it then sorts them by their value in descending order (b.compareTo(a)). Finally,
// the sorted nums list is returned.