class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  TreeNode? sortedArrayToBST(List<int> nums) {
    return build(nums, 0, nums.length - 1); 
  }

  TreeNode? build(List<int> nums, int l, int r) {
    if (l > r) return null; 

    int m = (l + r) ~/ 2; 
    return TreeNode(
      nums[m], // ✅ 
      build(nums, l, m - 1),
      build(nums, m + 1, r),
    );
  }
}

void main() {
  Solution solution = Solution();
  List<int> sortedArray = [-10, -3, 0, 5, 9];
  TreeNode? root = solution.sortedArrayToBST(sortedArray);
  printTree(root);
}

void printTree(TreeNode? node, [String prefix = '', bool isLeft = true]) {
  if (node == null) return;
  if (node.right != null) {
    printTree(node.right, prefix + (isLeft ? "│   " : "    "), false);
  }
  print(prefix + (isLeft ? "└── " : "┌── ") + "${node.val}");
  if (node.left != null) {
    printTree(node.left, prefix + (isLeft ? "    " : "│   "), true);
  }
}

//  This Dart code constructs a balanced Binary Search Tree (BST) from a sorted array.
//  The sortedArrayToBST method initiates the process by calling a recursive helper function build. 
//  This build function efficiently divides the sorted array, always selecting the middle element as the root of the current subtree.
//  Recursively, the left half of the array forms the left subtree and the right half forms the right subtree,
//  ensuring the BST properties are maintained and the tree remains balanced.
//  The printTree function then visually displays the constructed BST.