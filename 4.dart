double medianOf2(List<int> a, List<int> b) {
  // Merge both arrays
  List<int> c = [...a, ...b];

  // Sort the concatenated array
  c.sort();

  int lenC = c.length;

  // If length of array is even
  if (lenC % 2 == 0) {
    return (c[lenC ~/ 2] + c[lenC ~/ 2 - 1]) / 2.0;
  }

  // If length of array is odd
  else {
    return c[lenC ~/ 2].toDouble();
  }
}

void main() {
  List<int> a = [-5, 3, 6, 12, 15];
  List<int> b = [-12, -10, -6, -3, 4, 10];

  print(medianOf2(a, b));
}