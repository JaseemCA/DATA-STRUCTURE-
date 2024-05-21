class Node {
  int key;
  Node? left, right;

  Node(this.key) {
    left = null;
    right = null;
  }
}

class BinarySearchTree {
  Node? root;
 


  // A utility function to insert
  // a new node with given key in BST
  Node insert(Node? node, int key) {
    // If the tree is empty, return a new node
    if (node == null) {
      node = Node(key);
      return node;
    }

    // Otherwise, recur down the tree
    if (key < node.key)
      node.left = insert(node.left, key);
    else if (key > node.key)
      node.right = insert(node.right, key);

    // Return the (unchanged) node pointer
    return node;
  }

  // Utility function to search a key in a BST
  Node? search(Node? root, int key) {
    // Base Cases: root is null or key is present at root
    if (root == null || root.key == key)
      return root;

    // Key is greater than root's key
    if (root.key < key)
      return search(root.right, key);

    // Key is smaller than root's key
    return search(root.left, key);
  }
}

void main() {
  var bst = BinarySearchTree();
  bst.root = bst.insert(bst.root, 50);
  bst.root = bst.insert(bst.root, 30);
  bst.root = bst.insert(bst.root, 20);
  bst.root = bst.insert(bst.root, 40);
  bst.root = bst.insert(bst.root, 70);
  bst.root = bst.insert(bst.root, 60);
  bst.root = bst.insert(bst.root, 80);

  var key = 60;
  var result = bst.search(bst.root, key);
  if (result != null) {
    print("Key $key found in the BST.");
  } else {
    print("Key $key not found in the BST.");
  }
}
