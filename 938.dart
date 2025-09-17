class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  int rangeSumBST(TreeNode? root, int low, int high) {
    if (root == null) return 0;

    int currentVal = (root.val >= low && root.val <= high) ? root.val : 0;

    int leftSum = rangeSumBST(root.left, low, high);
    int rightSum = rangeSumBST(root.right, low, high);

    return currentVal + leftSum + rightSum;
  }
}

void main() {
  var root = TreeNode(
    10,
    TreeNode(
      5,
      TreeNode(3),
      TreeNode(7),
    ),
    TreeNode(
      15,
      null,
      TreeNode(18),
    ),
  );

  var sol = Solution();
  print(sol.rangeSumBST(root, 7, 15)); 
}


// This Dart code calculates the sum of all node values in a Binary Search Tree (BST)
// that fall within a specified range [low, high].
// The rangeSumBST method uses a recursive approach: it checks if the current node is null,
// returning 0 if it is.
// It then checks if the current node's
// value is within the range and adds it to the sum if it is.
// It recursively calls itself on the left and right children and returns
// the total sum of the current node's value, the sum from the left subtree, and the sum from the right subtree.