class node {
  int? data;
  node? next;
  node? prev;
  node(this.data);
}

class DlinkedList {
  node? head;
  node? tail;

  addnode(int data) {
    node newnode = node(data);

    node? temp = head;

    if (temp == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  display() {
    node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  displayreverse() {
    node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.prev;
    }
  }
}

void main() {
  DlinkedList values = DlinkedList();

  values.addnode(10);
  values.addnode(20);
  values.addnode(30);
  values.addnode(25);
  values.addnode(70);
  values.addnode(80);
  values.display();
  values.displayreverse();
}
