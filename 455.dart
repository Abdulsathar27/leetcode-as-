class Solution {
  int findContentChildren(List<int> g, List<int> s) {
    g.sort();
    s.sort();

    int i = 0;
    for (int cookie in s) {
      if (i < g.length && g[i] <= cookie) {
        i++;
      }
    }

    return i;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.findContentChildren([1, 2, 3], [1, 1])); // 1
  print(sol.findContentChildren([1, 2], [1, 2, 3])); // 2
}


// This Dart program determines the maximum number of children that can be satisfied with the available
// cookies using a greedy approach. Each child has a minimum cookie size requirement stored in g,
// and each cookie size is stored in s, so both lists are sorted to make matching efficient.
// The program iterates through the cookies from smallest to largest and tries to satisfy 
// the child with the smallest unmet requirement.
// Whenever a cookie is large enough to satisfy the current child,
// the child index is moved forward, indicating that child is content.
// By always assigning the smallest possible suitable cookie, 
// the algorithm ensures an optimal result without wasting larger cookies.
// The final value of i represents how many children have been successfully contented.
