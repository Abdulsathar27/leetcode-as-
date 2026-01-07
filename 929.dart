
class Solution {
  int numUniqueEmails(List<String> emails) {
    Set<String> normalized = {};

    for (String email in emails) {
      String local = '';

      for (int i = 0; i < email.length; i++) {
        String c = email[i];
        if (c == '+' || c == '@') break;
        if (c == '.') continue;
        local += c;
      }

      String domain = email.substring(email.indexOf('@'));
      normalized.add(local + domain);
    }

    return normalized.length;
  }
}

void main() {
  Solution s = Solution();
  print(s.numUniqueEmails([
    "test.email+alex@leetcode.com",
    "test.e.mail+bob.cathy@leetcode.com",
    "testemail+david@leetcode.com"
  ])); // 1
}


// This Dart program counts how many unique email addresses actually receive mail after applying standard email normalization rules.
// For each email, it processes the local part (before @) by ignoring dots and stopping at a plus sign,
// since everything after + is irrelevant for delivery. The domain part (after @) is kept exactly the same because it always matters.
// By combining the cleaned local name with the domain, the program forms a normalized email address.
// Each normalized email is stored in a Set, which automatically removes duplicates, 
// and the final size of the set represents the number of unique email addresses.