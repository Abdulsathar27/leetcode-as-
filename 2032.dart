class Solution {
  List<int> twoOutOfThree(List<int> nums1, List<int> nums2, List<int> nums3) {
    Set<int> s1 = nums1.toSet();
    Set<int> s2 = nums2.toSet();
    Set<int> s3 = nums3.toSet();

    Set<int> result = (s1.intersection(s2))
        .union(s2.intersection(s3))
        .union(s1.intersection(s3));

    return result.toList();
  }
}

void main() {
  var sol = Solution();
  print(sol.twoOutOfThree([1, 1, 3, 2], [2, 3], [3])); 
  print(sol.twoOutOfThree([3,1], [2,3], [1,2]));       
}

// This Dart code identifies numbers that appear in at least two of the three input lists.
// The twoOutOfThree method first converts each list into a Set to obtain only the unique elements.
// It then finds the intersection of each pair of sets (s1 and s2, s2 and s3, s1 and s3),
// which gives the elements common to those two lists. Finally, 
// it combines the results of these intersections using 
// the union operation to create a single set of all numbers that appeared in at least
// two of the original lists. 
// This final set is then converted back to a list and returned.
