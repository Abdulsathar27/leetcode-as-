class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> answer = [];
    List<TreeNode> stack = [];

    while (root != null || stack.isNotEmpty) {
      while (root != null) {
        stack.add(root);
        root = root.left;
      }

      root = stack.removeLast();
      answer.add(root.val);
      root = root.right;
    }

    return answer;
  }
}

void main() {
  TreeNode root = TreeNode(1, null, TreeNode(2, TreeNode(3)));

  Solution solution = Solution();
  List<int> result = solution.inorderTraversal(root);

  print("Inorder Traversal: $result"); 
}

// This Dart program demonstrates an iterative approach to performing an inorder traversal of a binary tree. 
// It utilizes a stack to keep track of nodes to visit. The algorithm works by repeatedly pushing left children onto the stack until a null node is encountered, 
// then popping a node, adding its value to the result list, and finally moving to its right child to repeat the process. 
// This ensures that nodes are visited in the order: left subtree, root, right subtree,
//  effectively printing the tree's elements in ascending order if it were a Binary Search Tree.

