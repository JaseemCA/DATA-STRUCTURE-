class node {
  int? data;
  node? left, right;
  node(this.data);
}

class Binery {
  node? root;

  insert(int data) {
    node? newnode = node(data);
    if (root == null) {
      root = newnode;
      return;
    }
    node? current = root;

    while (current != null) {
      if (newnode.data! < current.data!) {
        if (current.left == null) {
          current.left = newnode;
          break;
        } else {
          current = current.left;
        }
      } else if (newnode.data! > current.data!) {
        if (current.right == null) {
          current.right = newnode;
          break;
        } else {
          current = current.right;
        }
      }
    }
  }

  search(int val) {
    node? current = root;
    while (current != null) {
      if (val == current.data) {
        return true;
      } else if (val < current.data!) {
        current = current.left;
      } else if (val > current.data!) {
        current = current.right;
      }
    }
    return false;
  }

  remove(int data) {
    removehelper(data, root, null);
  }

  removehelper(int data, node? current, node? parent) {
    while (current != null) {
      if (data < current.data!) {
        parent = current;
        current = current.left;
      } else if (data > current.data!) {
        parent = current;
        current = current.right;
      } else {
        if (current.left != null && current.right != null) {
          current.data = getminamvalue(current.right);
          removehelper(current.data!, current.right, current);
        } else {
          if (parent == null) {
            if (current.right == null) {
              root = current.left;
            } else {
              root = current.right;
            }
          } else if (parent.left == current) {
            parent.left = current.left ?? current.left;
          } else {
            parent.right = current.left ?? current.right;
          }
          break;
        }
      }
    }
  }

  getminamvalue(node? current) {
    if (current?.left == null) {
      return current?.data;
    } else {
      getminamvalue(current?.left);
    }
  }

  bool bstornot() {
    int k = 0;

    bool inorder(node? node) {
      while (node != null) {
        if (!inorder(node.left)) {
          return false;
        }
        if (k > node.data!) {
          print('Its not a BST');
          return false;
        }
        k = node.data!;
        return inorder(node.right);
      }
      return true;
    }

    return inorder(root);
  }

  closest(int target) {
    node? current = root;
    if (current == null) {
      throw Exception("Tree is empty");
    }
    int closest = current.data!;
    while (current != null) {
      if ((target - closest).abs() > (target - current.data!)) {
        closest = current.data!;
      }
      if (target < current.data!) {
        current = current.left;
      } else if (target > current.data!) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }

  inOrder() {
    inorderHelper(root);
  }

  inorderHelper(node? node) {
    if (node != null) {
      inorderHelper(node.left);
      print(node.data);
      inorderHelper(node.right);
    }
  }

  preOrder() {
    preorderHelper(root);
  }

  preorderHelper(node? node) {
    if (node != null) {
      print(node.data);
      preorderHelper(node.left);
      preorderHelper(node.right);
    }
  }

  postOrder() {
    postorderHelper(root);
  }

  postorderHelper(node? node) {
    if (node != null) {
      postorderHelper(node.left);
      postorderHelper(node.right);
      print(node.data);
    }
  }
}

void main() {
  Binery bst = Binery();
  bst.insert(10);
  bst.insert(40);
  bst.insert(80);
  bst.insert(60);
  bst.insert(90);
  bst.insert(440);
  bst.insert(4);
  bst.insert(0);

  bst.remove(60);
  bst.inOrder();
  print("fdsdf");
  bst.postOrder();
  print("fdsdf");
  bst.preOrder();
  // print(bst.closest(87));
  // print(bst.bstornot());

  print(bst.search(60));
}
