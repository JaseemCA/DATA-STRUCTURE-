import '../WEEK1/WEEK1/practice/riview.dart';

class node {
  int? data;
  node? next;

  node(this.data);
}

class Slinked {
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

  display() {
    if (head == null) {
      print("empty");
    }

    node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  reverse() {
    node? temp = head;
    node? next;
    node? prev;

    while (temp != null) {
      next = temp.next;
      temp.next = prev;
      prev = temp;
      temp = next;
    }
    head = prev;
  }

  List<int> toarray() {
    List<int> arr = [];
    node? temp = head;
    while (temp != null) {
      arr.add(temp.data!);
      temp = temp.next;
    }
    return arr;
  }
}

void main() {
  Slinked list = Slinked();

  list.addnode(12);
  list.addnode(23);
  list.display();
}
