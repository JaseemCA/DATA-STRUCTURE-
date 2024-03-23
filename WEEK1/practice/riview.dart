class node {
  int? data;
  node? next;

  node(this.data);
}

class Sliked {
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

  findmiddle() {
    node? temp1 = head;
    node? temp2 = head;

    while (temp1 != null && temp2?.next != null) {
      temp1 = temp1.next;
      temp2 = temp2?.next!.next;
    }
    print("middle value ");
    print(temp1?.data);
  }
}



void main() {
  Sliked values = Sliked();
  values
    ..addnode(10)
    ..addnode(30)
    ..addnode(20)
    ..addnode(60);

  values.findmiddle();

  values.display();
}
