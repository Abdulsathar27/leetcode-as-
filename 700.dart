class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  TreeNode? searchBST(TreeNode? root, int val) {
    if (root == null) return null;

    if (root.val == val) {
      return root;
    } else if (root.val > val) {
      return searchBST(root.left, val);
    } else {
      return searchBST(root.right, val);
    }
  }
}

void main() {
  var root = TreeNode(
    4,
    TreeNode(
      2,
      TreeNode(1),
      TreeNode(3),
    ),
    TreeNode(7),
  );

  var sol = Solution();
  var found = sol.searchBST(root, 2);
  print(found?.val); 
}

// This Dart code performs a search operation on a Binary Search Tree (BST).
// The searchBST method uses a recursive approach to find a node with a specific value.
// It first checks if the current root is null; if so, it returns null.
// Then, it compares the root's value to the target val. If they match,
// the root is returned. If the root's value is greater than val,
// the search continues recursively on the left subtree; otherwise,
// it continues on the right subtree.
// This process leverages the ordered property of the BST to efficiently narrow down the search space.