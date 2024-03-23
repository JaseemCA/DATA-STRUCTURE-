class node {
  int? data;
  node? next;

  node(this.data);
}

class Linkedlist {
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
      print("value empty");
      return;
    }

    if (temp == tail) {
      tail = prev;
      tail?.next = null;
    }
    prev?.next = temp.next;
  }

  insertafter(int nextto, int data) {
    node newnode = node(data);
    node? temp = head;
    while (temp != null && temp.data != nextto) {
      temp = temp.next;
    }
    if (temp == null) {
      print("value not find");
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

  insertBefore(int before, int data) {
    node? temp = head;
    node newnode = node(data);
    node? prev;
    if (temp == null) {
      print('empty');
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
      print("value not found");
    }
    prev?.next = newnode;
    newnode.next = temp;
  }

  middlevalue() {
    node? temp1 = head;
    node? temp2 = head;

    while (temp1 != null && temp2?.next != null) {
      temp1 = temp1.next;
      temp2 = temp2?.next?.next;
    }
    print("middle value is${temp1?.data}");
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

  arraytolinkedlist(List<int> store) {
    for (int i = 0; i < store.length; i++) {
      addnode(store[i]);
    }
  }
}

void main() {
  Linkedlist value = Linkedlist();
  List<int> store = [1,2,3,4,5,6,];
  value.arraytolinkedlist(store);
  value.addnode(23);
  value.addnode(45);
  value.addnode(35);
  value.addnode(65);
  value.addnode(78);
  value.addnode(96);
  // value.deletenode(233);
  // value.insertafter(35, 10);
  // value.middlevalue();
  value.insertBefore(65, 100);

  value.display();

  // List<int> array = value.toarray();
  // print(array);
}
