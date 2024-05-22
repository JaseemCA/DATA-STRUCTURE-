class Node {
  int? data;
  Node? left, right;
  Node(this.data);
}

class BST {
  Node? root;

  insert(int data) {
    Node? newnode = Node(data);

    if (root == null) {
      root = newnode;
      return;
    }

    Node? current = root;

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
    Node? current = root;

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

  closest(int target) {
    Node? current = root;
    if (current == null) {
      print('empty');
    }
    int closest = current!.data!;

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

  bool bstornot() {
    int k = 0;
    bool inorder(Node? node) {
      while (node != null) {
        if (!inorder(node.left)) {
          return false;
        }
        if (k > node.data!) {
          print('its no a BST');
          return false;
        }
        k = node.data!;
        return inorder(node.right);
      }
      return true;
    }

    return inorder(root);
  }

  delete(int data) {
    deletehelper(data, root, null);
  }

  deletehelper(int data, Node? current, Node? parent) {
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
          deletehelper(current.data!, current.right, current);
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

  getminamvalue(Node? current) {
    if (current?.left == null) {
      return current?.data;
    } else {
      getminamvalue(current?.left);
    }
  }

  inorder() {
    inorderhelper(root);
  }

  inorderhelper(Node? node) {
    if (node != null) {
      inorderhelper(node.left);
      print(node.data);
      inorderhelper(node.right);
    }
  }

  preorder() {
    preorderhelper(root);
  }

  preorderhelper(Node? node) {
    if (node != null) {
      print(node.data);
      preorderhelper(node.left);
      preorderhelper(node.right);
    }
  }

  postorder() {
    postorderhelper(root);
  }

  postorderhelper(Node? node) {
    if (node != null) {
      postorderhelper(node.left);
      postorderhelper(node.right);
      print(node.data);
    }
  }
}

void main() {
  BST bst = BST();

  bst.insert(10);
  bst.insert(40);
  bst.insert(560);
  bst.insert(17);
  bst.insert(1);

  bst.inorder();
}
