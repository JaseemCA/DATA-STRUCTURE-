class node {
  int? data;
  node? left;
  node? right;

  node(this.data);
}

class Binerytree {
  node? root;

  insert(int data) {
    node? current = root;
    node? newvalue = node(data);

    if (current == null) {
      root = newvalue;
      return;
    }

    while (true) {
      if (newvalue.data! < current!.data!) {
        if (current.left == null) {
          current.left = newvalue;
          break;
        } else {
          current = current.left;
        }
      } else {
        if (current.right == null) {
          current.right = newvalue;
          break;
        } else {
          current = current.right;
        }
      }
    }
  }

  bool search(int data) {
    node? current = root;

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

  // remove(int data) {
  //   removehelper(data, root, null);
  // }

  // removehelper(int data, node? current, node? parent) {
  //   while (current != null) {
  //     if (data < current.data!) {
  //       parent = current;
  //       current = current.left;
  //     } else if (data > current.data!) {
  //       parent = current;
  //       current = current.rigth;
  //     } else {
  //       if (current.left != null && current.rigth != null) {
  //         current.data = getminvalue(current.rigth);
  //         removehelper(current.data!, current.rigth, current);
  //       } else {
  //         //aedho oru node mathram

  //         if (parent == null) {
  //           if (current.rigth == null) {
  //             root = current.left;
  //           } else {
  //             root = current.rigth;
  //           }
  //         } else {
  //           if (parent.left == current) {
  //             if (current.rigth == null) {
  //               parent.left = current.left;
  //             } else {
  //               parent.left = current.rigth;
  //             }
  //           } else {
  //             if (current.rigth == null) {
  //               parent.rigth = current.left;
  //             } else {
  //               parent.rigth = current.rigth;
  //             }
  //           }
  //         }
  //       }
  //     }
  //     break;
  //   }
  // }
  
  remove(int data) {
    removehelper(data, root, null);
  }

  removehelper(int data, node? current, node? parent) {
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
          current.data = getminvalue(current.right);
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

  getminvalue(node? current) {
    if (current!.left == null) {
      return current.data;
    } else {
      return getminvalue(current.left);
    }
  }
}

void main() {
  Binerytree bst = Binerytree();

  bst.insert(10);
  bst.insert(20);
  // bst.insert(70);
  bst.insert(30);

  bst.remove(30);

  print(bst.search(30));
}
