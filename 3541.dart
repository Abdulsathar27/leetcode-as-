class Solution {
  int maxFreqSum(String s) {
    Set<String> vowels = {'a', 'e', 'i', 'o', 'u'};
    List<int> freq = List.filled(26, 0);

    int maxVowel = 0;
    int maxConsonant = 0;

    for (int i = 0; i < s.length; i++) {
      String c = s[i];
      int idx = s.codeUnitAt(i) - 'a'.codeUnitAt(0);

      freq[idx]++;

      if (vowels.contains(c)) {
        if (freq[idx] > maxVowel) {
          maxVowel = freq[idx];
        }
      } else {
        if (freq[idx] > maxConsonant) {
          maxConsonant = freq[idx];
        }
      }
    }

    return maxVowel + maxConsonant;
  }
}

void main() {
  Solution s = Solution();
  print(s.maxFreqSum("successes")); 
}


// This Dart program calculates the sum of the highest frequency vowel and the highest frequency consonant in a lowercase string. 
// It first maintains a frequency array to count how many times each character appears.
// As it loops through the string, it increments the frequency of the current character and checks whether it is a vowel or a consonant.
// If it is a vowel, it updates maxVowel whenever a higher vowel frequency is found; otherwise, it updates maxConsonant for consonants.
// After processing all characters, the function returns the sum of the maximum vowel frequency and the maximum consonant frequency.
// For example, in "successes", the vowel 'e' appears twice and the consonant 's' appears four times, so the result would be 6.