// import 'dart:js_util';

import 'dart:collection';

class node {
  dynamic data;
  // String? name;
  node? next;

  node(this.data);
}

class Slinkedlist {
  node? head;
  node? tail;

  addnode(dynamic data) {
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

  middlevalue() {
    node? temp1 = head;
    node? temp2 = head;
    while (temp1 != null && temp2?.next != null) {
      temp1 = temp1.next;
      temp2 = temp2?.next?.next;
    }

    print("middle value is ");
    print(temp1?.data);
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

  removeDuplicate() {
    if (head == null) {
      return;
    }
    node? current = head;
    HashSet<int> seenValues = HashSet();

    seenValues.add(current!.data!);

    while (current?.next != null) {
      if (seenValues.contains(current?.next!.data)) {
        current?.next = current.next!.next;
      } else {
        seenValues.add(current!.next!.data!);
        current = current.next;
      }
    }

    tail = current;
  }

  removeduplicate() {
    node? temp = head;
    node? next;
    while (temp != null) {
      next = temp.next;
      while (next != null && next.data == temp.data) {
        next = next.next;
      }
      temp.next = next;

      if (next == tail && temp.data == next?.data) {
        tail = temp;
        tail?.next = null;
      }
      temp = next;
    }
  }

  reverselinked() {
    node? prev = null;
    node? temp = head;
    node? next;

    while (temp != null) {
      next = temp.next;
      temp.next = prev;
      prev = temp;
      temp = next;
    }
    head = prev;
  }
}

void main() {
  Slinkedlist list = Slinkedlist();

  // list.displaylist();

  list.addnode("P");
  list.addnode("E");
  list.addnode("T");
  list.addnode("E");
  list.addnode("R");
  // list.addnode(6);
  // list.addnode(7);
  // list.addnode(8);
  // list.addnode(9);
  //  list.addnode(10);

  // list.addnode(52);

  // list.insertAfter(20, 500);
  // list.insertbefore(20, 300);
  // list.insertBefore(22, 300);
  // list.deletenode(20);
  // list.middlevalue();
  // list.removeduplicate();
  list.reverselinked();
  list.displaylist();
}
