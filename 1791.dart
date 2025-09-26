class Solution {
  int findCenter(List<List<int>> edges) {
    if (edges[0][0] == edges[1][0] || edges[0][0] == edges[1][1]) {
      return edges[0][0]; 
    } else {
      return edges[0][1]; 
    }
  }
}

void main() {
  var sol = Solution();
  print(sol.findCenter([[1, 2], [2, 3], [4, 2]])); 
  print(sol.findCenter([[1, 2], [5, 1], [1, 3], [1, 4]])); 
}

// This Dart code efficiently finds the center of a star graph.
// A star graph is an undirected graph where there is one center node connected to every other node,
// meaning the center node appears in every edge.

// The findCenter method uses a simple logic: it only needs to check 
// the first two edges in the edges list. 
// The center node must be a common endpoint between the first two edges, edges[0] and edges[1].

// It checks if the first node of the first edge (edges[0][0])
// is equal to either endpoint of the second edge (edges[1][0] or edges[1][1]).

// If a match is found, edges[0][0] is the center node and is returned.

// If there's no match, the other endpoint of the first edge (edges[0][1])
// must be the center node, and it's returned.