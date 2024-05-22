import 'dart:collection';

class node {
  int? data;
  node? left, right;
  node(this.data);
}

class Binery {
  node? root;

  void insert(int data) {
    node newnode = node(data);

    if (root == null) {
      root = newnode;
      return;
    }

    Queue<node?> queue = Queue();
    queue.add(root);

    while (queue.isNotEmpty) {
      node? current = queue.removeFirst();

      if (current!.left == null) {
        current.left = newnode;
        return;
      } else {
        queue.add(current.left);
      }

      if (current.right == null) {
        current.right = newnode;
        return;
      } else {
        queue.add(current.right);
      }
    }
  }

  void inOrder() {
    inorderHelper(root);
  }

  void inorderHelper(node? node) {
    if (node != null) {
      inorderHelper(node.left);
      print(node.data);
      inorderHelper(node.right);
    }
  }
}

void main() {
  Binery value = Binery();
  value.insert(14);
  value.insert(40);
  value.insert(50);
  value.insert(70);
  value.insert(90);
  value.insert(80);
  value.inOrder();
}
