class node {
  dynamic data;
  node? next;

  node(this.data);
}

class sLinkedList {
  node? head;
  node? tail;

  addnode(dynamic data) {
    node? newnnode = node(data);

    if (head == null) {
      head = newnnode;
    } else {
      tail?.next = newnnode;
    }
    tail = newnnode;
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

  updateLinked(data, int newval) {
    node? temp = head;
    while (temp != null) {
      if (temp.data == data) {
        temp.data = newval;
        break;
      }
       temp = temp.next;
    }
   
  }
}

void main() {
  sLinkedList value = sLinkedList();

  value.addnode(20);
  value.addnode(30);
  value.addnode(50);
  value.addnode(30);
  value.addnode(60);
  value.addnode(70);

  value.updateLinked(70, 700);

  value.display();
}
