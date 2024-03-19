class node {
  int? data;
  node? next;

  node(this.data);
}

class linked {
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
    node? temp = head;
    if (head == null) {
      print("empty");
      return;
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  innsertafter(int nextto, int data) {
    node? temp = head;
    node newnode = node(data);

    while (temp != null && temp.data != nextto) {
      temp = temp.next;
    }
    if (temp == null) {
      print("empty");
      return;
    }
    if (temp == tail) {
      tail?.next = newnode;
      tail = newnode;
    }
    newnode.next = temp.next;
    temp.next = newnode;
  }

  insertbefore(int before, int data) {
    node newnode = node(data);
    node? temp = head;
    node? prev = null;

    if (temp == null) {
      print("list is empty");
      return;
    }
    if (temp.data == before) {
      newnode.next = temp;
      head = newnode;
      return;
    }

    while (temp != null && temp.data != before) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == null) {
      print("before is not found");
      return;
    }
    prev?.next = newnode;
    newnode.next = temp;
  }

  List<int> toarray() {
    List<int> array = [];
    node? temp = head;
    while (temp != null) {
      array.add(temp.data!);
      temp = temp.next;
    }
    return array;
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
}

void main() {
  linked value = linked();
  value.addnode(80);
  value.addnode(20);
  value.addnode(60);
  value.addnode(30);
  value.addnode(10);
  // value.addnode(90);
  // value.addnode(70);
  // value.addnode(40);

  // value.innsertafter(70, 50);
  // value.insertbefore(20, 50);

  List<int> resu = value.toarray();
  print(resu);
  // value.removeduplicate();
  // value.reverse();
  value.middleValueDelete();
  value.display();
}
