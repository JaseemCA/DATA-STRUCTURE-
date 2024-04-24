class node {
  dynamic data;
  node? next;
  node(this.data);
}

class Queue {
  node? front;
  node? rear;
  late int size = 0;

  bool isempty() {
    return size == 0;
  }

  int Size() {
    return size;
  }

  void enqueue(dynamic data) {
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

  display() {
    node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  peek() {
    if (front != null) {
      print(front?.data);
    } else {
      return null;
    }
  }
}

void main() {
  Queue values = Queue();

  values.enqueue(10);
  values.enqueue(23);
  values.enqueue(43);
  values.enqueue(19);
  values.display();
  var size = values.Size();
  print(size);
  values.peek();
}
