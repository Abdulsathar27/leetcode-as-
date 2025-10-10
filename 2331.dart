class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  bool evaluateTree(TreeNode? root) {
    if (root == null) return false;

    if (root.val < 2) return root.val == 1;

    if (root.val == 2) {
      return evaluateTree(root.left) || evaluateTree(root.right);
    }
    return evaluateTree(root.left) && evaluateTree(root.right);
  }
}

void main() {
 
  var root = TreeNode(
    2,
    TreeNode(1),
    TreeNode(3, TreeNode(0), TreeNode(1)),
  );

  var sol = Solution();
  print(sol.evaluateTree(root)); 
}

// Code Logic
// Base Cases (Leaf Nodes):

// if (root.val < 2): This handles leaf nodes (values 0 or 1). It returns true only if the node's value is 1 (since 1 is true and 0 is false).

// Recursive Cases (Operator Nodes):

// if (root.val == 2): If the node is an OR operator, it recursively evaluates the left and right subtrees and returns
// the logical OR of their results (||).

// return evaluateTree(root.left) && evaluateTree(root.right): If the node is neither 0, 1, nor 2 
// (meaning it must be 3), it recursively evaluates the left and right subtrees and returns the logical AND of their results (&&).

// Example Walkthrough: root (2, 1, 3(0, 1))
// Call evaluateTree(root (2)):

// Left Subtree evaluateTree(1): Base case (value is 1). → True

// Right Subtree evaluateTree(3):

// Left Grandchild evaluateTree(0): Base case (value is 0). → False

// Right Grandchild evaluateTree(1): Base case (value is 1). → True

// The node 3 is an AND operation: False AND True→ False

// Root (2): The root is an OR operation: True OR False→ True

// The function correctly returns true.