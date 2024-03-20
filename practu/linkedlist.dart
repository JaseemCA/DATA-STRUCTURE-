class node {
  node? next;
  int? data;

  node(this.data);
}

class Slinked {
  node? head;
  node? tail;

  addnode(int data) {
    node? newnode = node(data);

    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  display() {
    // if (head == null) {
    //   print("empty");
    //   return;
    // }
    node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  reverse() {
    node? temp = head;
    node? prev;
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
  Slinked list = Slinked();

  list.addnode(10);
  list.addnode(30);
  list.addnode(47);
  list.addnode(34);
  list.addnode(30);
  list.reverse();
  list.display();
}
