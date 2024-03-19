class node {
  node? next;
  int? data;

  node(this.data);
}

class slinked {
  node? head;
  node? tail;

  addnode(int data) {
    node newnode = node(data);
    node? temp = head;

    if (temp == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      tail = newnode;
    }
  }

  display() {
    node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  toarray() {
    List<int> arr = [];
    node? temp = head;
    while (temp != null) {
      arr.add(temp.data!);
      temp = temp.next;
    }
  }
}

void main() {
  slinked values = slinked();
  values.addnode(4);
  values.addnode(14);
  values.addnode(13);
  values.addnode(20);
  values.addnode(17);

  values.display();
  // List<int> arr = [];
  List<int>arr=(values.toarray());
  print(arr);
}
