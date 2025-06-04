class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> image) {
    var n = image.length, m = image[0].length;
    for(var i =0; i < n;i++){
    image[i] = image[i].reversed.toList();
    for(var j = 0; j < m; j++ ){
     image[i][j] ^= 1;
    }
    }
    return image;
  }
}
void main() {
  List<List<int>> inputImage = [
    [1, 1, 0],
    [1, 0, 1],
    [0, 0, 0]
  ];

  Solution sol = Solution();
  List<List<int>> result = sol.flipAndInvertImage(inputImage);

  print("Flipped and Inverted Image:");
  for (var row in result) {
    print(row);
  }
}