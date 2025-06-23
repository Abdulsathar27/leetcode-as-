class Solution {
  List<List<int>> permute(List<int> nums) {
    List<List<int>> result = [];

    void generate(List<int> current, List<int> remaining) {
      if (remaining.isEmpty) {
        result.add(List.from(current));
        return;
      }

      for (int i = 0; i < remaining.length; i++) {
        List<int> newCurrent = List.from(current)..add(remaining[i]);
        List<int> newRemaining = List.from(remaining)..removeAt(i);

        generate(newCurrent, newRemaining);
      }
    }

    generate([], nums);
    return result;
  }
}
void main() {
  var solution = Solution();
  print(solution.permute([1, 2, 3]));
}


// This Dart code generates all possible permutations of a given list of integers.
// The permute method initializes an empty list result to store the permutations. 
// It then defines a recursive helper function generate which takes current (the permutation being built) and remaining
// (the elements yet to be added) as arguments. The base case for the recursion is when remaining is empty,
// at which point the current permutation is added to result. In the recursive step, 
// generate iterates through the remaining elements, creating a newCurrent list by adding the current element and a newRemaining list by removing it,
// then recursively calls itself with these new lists to explore further permutations. 
// The initial call to generate starts with an empty current list and the original nums list as remaining.