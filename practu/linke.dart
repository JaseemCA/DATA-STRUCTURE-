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

  insertafter(int data, int after) {
    node? temp = head;
    node? newnode = node(data);

    while (temp != null && temp.data != after) {
      temp = temp.next;
    }
    if (temp == null) {
      print("empty");
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

  display() {
    if (head == null) {
      print("linked is empty");
    }
    node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  delete(int data) {
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
      print('empty list');
      return;
    }
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
      return;
    }
    prev!.next = temp.next;
  }

  List<int> todarray() {
    node? temp = head;
    List<int> arr = [];

    while (temp != null) {
      arr.add(temp.data!);
      temp = temp.next;
    }
    return arr;
  }

  arraytolist(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      addnode(arr[i]);
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
  linked values = linked();

  values.addnode(10);
  values.addnode(5);
  values.addnode(50);
  values.addnode(60);
  values.addnode(70);
  values.addnode(70);

  // values.delete(5);
  values.insertafter(90, 10);

  // values.todarray();
  // var resu = values.todarray();
  // print(resu);
  List<int> arr = [1, 2, 3, 4, 5, 6];

  values.arraytolist(arr);

  values.display();
}
