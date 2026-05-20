class Solution {
  List<int> arrayRankTransform(List<int> arr) {
    // Copy array
    List<int> sortedArr = List.from(arr);

    // Sort copied array
    sortedArr.sort();

    // Store ranks
    Map<int, int> rank = {};

    for (int num in sortedArr) {
      if (!rank.containsKey(num)) {
        rank[num] = rank.length + 1;
      }
    }

    // Replace original values with rank
    for (int i = 0; i < arr.length; i++) {
      arr[i] = rank[arr[i]]!;
    }

    return arr;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.arrayRankTransform([40,10,20,30]));
  // [4,1,2,3]

  print(sol.arrayRankTransform([100,100,100]));
  // [1,1,1]

  print(sol.arrayRankTransform([37,12,28,9,100,56,80,5,12]));
  // [5,3,4,2,8,6,7,1,3]
}