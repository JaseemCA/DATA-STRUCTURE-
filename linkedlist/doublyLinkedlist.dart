class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DlinkedList {
  Node? head;
  Node? tail;

  addNode(int data) {
    Node newNode = Node(data);
    Node? temp = head;

    if (temp == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  displaylist() {
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  displayreverse() {
    Node? temp = tail;
    while (temp != null) {
      print(temp.data);

      temp = temp.prev;
    }
  }
}

void main() {
  DlinkedList list = new DlinkedList();

  list.addNode(1);
  list.addNode(2);
  list.addNode(3);
  list.addNode(3);
  list.addNode(4);
  list.displaylist();
  // list.displayreverse();
}
