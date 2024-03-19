// import 'dart:js_util';

import 'dart:collection';

class node {
  dynamic data;
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

  insertbefore(int before, int data) {
    node? newnode = node(data);
    node? current = head;
    node? prev = null;

    if (current == null) {
      print("List is empty");
      return;
    }

    if (current.data == before) {
      newnode.next = current;
      head = newnode;
      return;
    }

    while (current != null && current.data != before) {
      prev = current;
      current = current.next;
    }

    if (current == null) {
      print("Node with value $before not found in the list");
      return;
    }

    prev!.next = newnode;
    newnode.next = current;
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
    node? next = null;

    while (temp != null) {
      next = temp.next;
      temp.next = prev;
      prev = temp;
      temp = next;
    }
    head = prev;
  }

  middleValueDelete() {
    node? temp = head;
    node? slow = temp;
    node? fast = temp;
    node? prev;

    while (slow?.next != null && fast?.next != null) {
      slow = slow?.next;
      fast = fast?.next?.next;
    }
    if (temp != null && temp.data == slow?.data) {
      head = temp.next;
    }
    while (temp != null && temp.data != slow?.data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == tail) {
      prev = tail;
      tail?.next = null;
    }
    prev?.next = temp?.next;
  }

  List<int> toarray() {
    List<int> arr = [];
    node? temp = head;
    while (temp != null) {
      arr.add(temp.data);
      temp = temp.next;
    }
    return arr;
  }

  arraytolist(List<int> arr) {
   
    for (int i = 0; i < arr.length; i++) {
      addnode(arr[i]);
    }
  }
}

void main() {
  Slinkedlist list = Slinkedlist();

  List<int> arr = [2, 3, 4, 6, 7];

  list.arraytolist(arr);
  

  // list.displaylist();

  // list.addnode("P");
  // list.addnode("E");
  // list.addnode("T");
  // list.addnode("E");
  // list.addnode("R");
  list.addnode(6);
  list.addnode(7);
  list.addnode(8);
  list.addnode(9);
  list.addnode(10);

  // list.insertbefore(6, 5);
  // List<int> resu = list.toarray();
  // print(resu);
  // list.insertAfter(20, 500);
  // list.insertbefore(20, 300);
  // list.insertBefore(22, 300);
  // list.deletenode(20);
  // list.middlevalue();
  // list.removeduplicate();
  // list.reverselinked();
  // list.middleValueDelete();
  list.displaylist();
}
