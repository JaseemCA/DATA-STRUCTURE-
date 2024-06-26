class Node {
  Node? left, right;
  int? data;
  Node(this.data);
}

class Binary {
  Node? root;
  insert(int val) {
    Node? newval = Node(val);
    if (root == null) {
      root = newval;
    }
    Node? current = root;

    while (true) {
      if (newval.data! < current!.data!) {
        if (current.left == null) {
          current.left = newval;
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = newval;
          break;
        } else {
          current = current.right;
        }
      }
    }
  }

  // search(int val) {
  //   Node? current = root;
  //   while (current != null) {
  //     if (val == current.data) {
  //       return true;
  //     } else if (val < current.data!) {
  //       current = current.left;
  //     } else {
  //       current = current.right;
  //     }
  //   }
  //   return false;
  // }
   bool search(int data) {
    Node? current = root;

    while (current != null) {
      if (data == current.data) {
        return true;
      } else if (data < current.data!) {
        current = current.left;
      } else if (data > current.data!) {
        current = current.right;
      }
    }
    return false;
  }

  remove(int data) {
    removehelper(data, root, null);
  }

  removehelper(int data, Node? current, Node? parent) {
    // Node? current = root;
    while (current != null) {
      if (data < current.data!) {
        parent = current;
        current = current.left;
      } else if (data > current.data!) {
        parent = current;
        current = current.right;
      } else {
        if (current.left != null && current.right != null) {
          current.data = getminval(current.right);
          removehelper(current.data!, current.right, current);
        } else {
          if (parent == null) {
            if (current.right == null) {
              root = current.left;
            } else {
              root = current.right;
            }
          } else {
            if (parent.left == current) {
              if (parent.right == null) {
                parent.left = current.left;
              } else {
                parent.left = current.right;
              }
            }
            if (parent.right == current) {
              if (parent.right == null) {
                parent.left = current.left;
              } else {
                parent.left = current.right;
              }
            }
          }
          break;
        }
      }
    }
  }

  getminval(Node? current) {
    if (current!.left == null) {
      return current.data;
    } else {
      getminval(current.left);
    }
  }
}

void main() {
  Binary binary = Binary();
  binary.insert(34);
  binary.insert(24);
  // binary.insert(14);
  // binary.remove(34);
  print(binary.search(44));
}