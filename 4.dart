double findMedianOf2(List<int> nums1, List<int> nums2) {
  // Merge both arrays
  List<int> nums3 = [...nums1, ...nums2];

  // Sort the concatenated array
  nums3.sort();

  int lennums3 = nums3.length;

  // If length of array is even
  if (lennums3 % 2 == 0) {
    return (nums3[lennums3 ~/ 2] + nums3[lennums3 ~/ 2 - 1]) / 2.0;
  }

  // If length of array is odd
  else {
    return nums3[lennums3 ~/ 2].toDouble();
  }
}

void main() {
  List<int> a = [-5, 3, 6, 12, 15];
  List<int> b = [-12, -10, -6, -3, 4, 10];

  print(findMedianOf2(a, b));
}