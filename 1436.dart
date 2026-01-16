
class Solution {
  String destCity(List<List<String>> paths) {
    Set<String> cities = {};

    for (int i = 0; i < paths.length; i++) {
      cities.add(paths[i][1]);
    }

    for (int i = 0; i < paths.length; i++) {
      cities.remove(paths[i][0]);
    }

    return cities.first;
  }
}

void main() {
  Solution s = Solution();
  print(s.destCity([
    ["London", "New York"],
    ["New York", "Lima"],
    ["Lima", "Sao Paulo"]
  ])); 
}

// This Dart program finds the final destination city in a list of travel paths where each path has a starting city and an ending city.
// It first adds all destination cities (the second element of each path) into a set, which ensures uniqueness.
// Then it iterates through the paths again and removes every city that appears as a starting point,
// since those cities are not final destinations. After this removal process, 
// only one city remains in the set—the city that is never used as a starting point.
// The function returns this remaining city as the destination. In the given example,
// all cities are removed except "Sao Paulo", which is correctly identified as the final destination.
