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

  sortingDouble() {
    Node? temp = head;

    if (temp != null) {
      Node? next = temp.next;

      while (next != null && temp.data == next.data) {
        next = next.next;
        next?.prev = temp;
      }
      temp.next = next;
      if (next != null && next == tail) {
        next.next = null;
      }
      if (next == tail && temp.data == next?.data) {
        tail = temp;
        tail?.next = null;
      }
      temp = next;
    }
  }
}

void main() {
  DlinkedList list = new DlinkedList();
 list.addNode(5);
  list.addNode(7);
  list.addNode(1);
   list.addNode(9);
  list.addNode(2);
  list.addNode(3);
  list.addNode(3);
  list.addNode(4);
  list.sortingDouble();
  list.displaylist();
  // list.displayreverse();
}
