class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
    List<MapEntry<int, String>> heightAndNames = [];

    for (int i = 0; i < names.length; i++) {
      heightAndNames.add(MapEntry(heights[i], names[i]));
    }

    heightAndNames.sort((a, b) => b.key.compareTo(a.key));

    List<String> answers = [];
    for (var entry in heightAndNames) {
      answers.add(entry.value);
    }

    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.sortPeople(['Alice', 'Bob', 'Charlie'], [165, 180, 170]));
}

// This Dart code sorts a list of names based on their corresponding heights in descending order 
// (tallest to shortest). The core idea is to combine the names and heights so 
// they can be sorted as a single unit. It does this by 
// creating a list of MapEntry objects, where each height is paired as a key with 
// its name as the value. The entire list of these pairs is then sorted using a custom 
// comparator that tells Dart to look at the key (the height) and arrange the pairs 
// from largest to smallest. Finally, the code iterates through the newly sorted
//  list and extracts only the names, resulting in a list of people sorted correctly by height.