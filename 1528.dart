String restoreString(String s, List<int> indices) {
  List<String> answers = List.filled(s.length, '');  

  for (int i = 0; i < s.length; i++) {
    answers[indices[i]] = s[i]; 
  }

  return answers.join();  
}
void main() {
  String s = "code";
  List<int> indices = [3, 1, 2, 0];

  String result = restoreString(s, indices);
  print(result);
}

// This Dart code restores a string s to its original shuffled position based on a given list of indices.
// The restoreString function initializes a new answers list of the same length as s,
// filled with empty strings. It then iterates through the input string s and its corresponding indices list.
// For each character s[i], it places this character into the answers list at the position specified by indices[i].
// Finally, it joins the characters in the answers list to form and return the fully restored string.