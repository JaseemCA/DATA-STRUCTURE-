// // class TreeNode {
// //   int? value;
// //   TreeNode? left;
// //   TreeNode? right;

// //   TreeNode(int value) {
// //     this.value = value;
// //     left = null;
// //     right = null;
// //   }
// // }

// // void main() {
// //   // Creating a binary tree node
// //   TreeNode node = TreeNode(5);
// //   print("Binary Tree Node Value: ${node.value}");
// // }



// class TreeNode {
//   int? value;
//   TreeNode? left;
//   TreeNode? right;

//   TreeNode(int value) {
//     this.value = value;
//     left = null;
//     right = null;
//   }
// }

// void preOrderTraversal(TreeNode? root) {
//   if (root == null) return;

//   print(root.value); // Process the current node

//   // Recursively traverse left subtree
//   preOrderTraversal(root.left);

//   // Recursively traverse right subtree
//   preOrderTraversal(root.right);
// }

// void main() {
//   // Creating a binary tree
//   TreeNode root = TreeNode(1);
//   root.left = TreeNode(2);
//   root.right = TreeNode(3);
//   root.left?.left = TreeNode(4);
//   root.left?.right = TreeNode(5);

//   // Performing pre-order traversal
//   print("Pre-order Traversal:");
//   preOrderTraversal(root);
// }


class TreeNode {
  int? value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(int value) {
    this.value = value;
    left = null;
    right = null;
  }
}

int treeHeight(TreeNode? root) {
  if (root == null) return -1;
  int leftHeight = treeHeight(root.left);
  int rightHeight = treeHeight(root.right);
  return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
}

void main() {
  // Creating a binary tree
  TreeNode root = TreeNode(1);
  root.left = TreeNode(2);
  root.right = TreeNode(3);
  root.left?.left = TreeNode(4);
  root.left?.right = TreeNode(5);

  // Finding height of the tree
  int height = treeHeight(root);
  print("Height of the Binary Tree: $height");
}
