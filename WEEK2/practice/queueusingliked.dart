class node {
  dynamic data;
  node? next;
  node(this.data);
}

class Queue {
  node? front;
  node? rear;
  int size = 0;

  bool isempty() {
    return size == 0;
  }

  int Size() {
    return size;
  }

  void enque(dynamic data) {
    node newnode = node(data);
    if (rear == null) {
      front = newnode;
      rear = newnode;
    } else {
      rear?.next = newnode;
      rear = newnode;
    }
    size++;
  }

  dynamic deque() {
    if (front == null) {
      return null;
    }
    dynamic data = front?.data;
    front = front?.next;
    if (front == null) {
      rear = null;
    }
    size--;
    return data;
  }

  dynamic peek() {
    if (front != null) {
      print(front?.data);
    } else {
      return null;
    }
  }

  display() {
    node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void reverse() {
    Queue temp = Queue();
    while (!isempty()) {
      temp.enque(deque());
    }
    while (!temp.isempty()) {
      enque(temp.deque());
    }
  }
}

void main() {
  Queue value = Queue();

  value.enque(10);
  value.enque(22);
  value.enque(34);
  value.enque(56);
  // value.deque();

  value.display();
  print("reversed");
  value.reverse();
  value.display();
}
