class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    List<int> ans = [];
    List<int> count = List.filled(1001, 0);

    
    for (int a in arr1) {
      count[a]++;
    }

    
    for (int a in arr2) {
      while (count[a] > 0) {
        ans.add(a);
        count[a]--;
      }
    }

    
    for (int num = 0; num < 1001; num++) {
      while (count[num] > 0) {
        ans.add(num);
        count[num]--;
      }
    }

    return ans;
  }
}

void main() {
  var solution = Solution();
  List<int> arr1 = [2,3,1,3,2,4,6,7,9,2,19];
  List<int> arr2 = [2,1,4,3,9,6];

  print(solution.relativeSortArray(arr1, arr2));

}

// This Dart code implements a custom sorting algorithm to sort arr1 based on the relative order of elements in arr2,
// with remaining elements appended in ascending order. It uses a counting sort approach: first,
// it counts the occurrences of each number in arr1 and stores them in the count array. Then, 
// it iterates through arr2, adding elements to the ans list according to their order and frequency. Finally,
// it appends any remaining elements from arr1 (those not present in arr2) to ans in ascending numerical order.
