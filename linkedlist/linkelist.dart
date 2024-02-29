// import 'dart:js_util';

class node {
  int? data;
  node? next;

  node(this.data);
}

class Slinkedlist {
  node? head;
  node? tail;

  addnode(int data) {
    node newnode = node(data);

    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  displaylist() {
    if (head == null) {
      print("empty");
      return;
    }
    node? temp = head;

    while (temp != null) {
      print(temp.data);

      temp = temp.next;
    }
  }
}

void main() {
  Slinkedlist list = Slinkedlist();
  // list.displaylist();
  list.addnode(20);
  list.addnode(230);
  list.addnode(30);
  list.addnode(22);
  list.displaylist();



}
