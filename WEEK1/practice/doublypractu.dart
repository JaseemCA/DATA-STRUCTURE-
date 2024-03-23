class node {
  int? data;
  node? next;
  node? prev;

  node(this.data);
}

class Dlinked {
  node? head;
  node? tail;
  addnode(int data) {
    node? newnode = node(data);
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
  Dlinked values = Dlinked();

  values.addnode(12);
  values.addnode(43);
  values.addnode(56);
  values.addnode(76);
  values.addnode(24);

  values.display();
  values.displayreverse();
}
