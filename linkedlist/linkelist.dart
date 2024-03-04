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
      // print("values are");
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

  deletenode(int data) {
    node? temp = head;
    node? prev;

    if (temp != null && temp.data == data) {
      head = temp.next;
      return;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == null) {
      print("value is empty");
      return;
    }

    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }

    prev?.next = temp.next;
  }

  insertAfter(int nextto, int data) {
    node newnode = node(data);
    node? temp = head;

    while (temp != null && temp.data != nextto) {
      temp = temp.next;
    }
    if (temp == null) {
      print('data is not available');
      return;
    }

    if (temp == tail) {
      tail?.next = newnode;
      tail = newnode;
      return;
    }
    newnode.next = temp.next;
    temp.next = newnode;
  }

  insertBefore(int before, int data) {
    node newnode = node(data);
    node? temp = head;
    node? prev;

    if (head == null) {
      print("empty");
      return;
    }

    if (head?.data == before) {
      newnode.next = head;
      newnode = head!;
      return;
    }

    while (temp != null && temp.data != before) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == null) {
      print('data is not available');
      return;
    }

    prev!.next = newnode;
    newnode.next = temp;
  }

  insertbefore(int before, int data) {
    node? newnode = node(data);
    node? current = head;

    if (current == null) {
      print("empty");
      return;
    }

    if (head?.data == before) {
      newnode.next = head;
      head = newnode;
    }

    if (current.data == before) {
      newnode.next = current;

      return;
    }

    while (current?.next != null && current?.next?.data != before) {
      current = current?.next;
    }
    newnode.next = current?.next;
    current?.next = newnode;
  }
}

void main() {
  Slinkedlist list = Slinkedlist();
  // list.displaylist();
  list.addnode(20);
  // list.addnode(230);
  list.addnode(30);
  list.addnode(22);
  // list.deletenode(10);
  // list.insertAfter(20, 500);
  list.insertbefore(20, 300);
  // list.insertBefore(22, 300);
  list.displaylist();
}
