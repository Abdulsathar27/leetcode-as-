class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  bool checkTree(TreeNode? root) {
    if (root == null) return false;
    return (root.left!.val + root.right!.val) == root.val;
  }
}

void main() {
  var root = TreeNode(10, TreeNode(4), TreeNode(6));

  var sol = Solution();
  print(sol.checkTree(root)); 
}

// The checkTree method implements the following check:

// root.val=root.left.val+root.right.valFunction Logic

// Null Check: It first checks if the root is null, although for the problem constraints

// (a guaranteed two-child root), this is mainly a safeguard, returning false if true.

// Value Check: It then accesses the values of the left and right children using the non-null assertion operator

// (!) since the tree is guaranteed to have two children.

// Result: It returns true if the sum of the children's values equals the root's value;

// otherwise, it returns false.

// For the example root = 10, left = 4, and right = 6, the check is 4+6=10, which returns true.