class node {
  int? data;
  node? next;
  node(this.data);
}

class Slikedlist {
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
    head = tail?.next;
  }

  display() {
    if (head == null) {
      print('empty');
      return;
    }
    node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  checkingcircularornot() {
    if (tail?.next == head) {
      print("circular");
    } else {
      print("not circular");
    }
  }
}

void main() {
  Slikedlist values = Slikedlist();

  values.addnode(10);
  values.addnode(20);
  values.addnode(40);
  values.addnode(50);
  values.display();
  values.checkingcircularornot();
}
