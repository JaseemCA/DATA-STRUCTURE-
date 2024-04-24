class Queue {
  List<int> elements = [];

  void enque(int value) {
    elements.add(value);
  }

  dynamic deque() {
    if (elements.isNotEmpty) {
      return elements.removeAt(0);
    } else {
      return null;
    }
  }

  int size() {
    return elements.length;
  }

  bool isempty() {
    return elements.isEmpty;
  }

  dynamic peek() {
    if (elements.isNotEmpty) {
      return elements[0];
    }
    return null;
  }

  void display() {
    print(elements);
  }

  int sum() {
    int sum = 0;
    for (var datas in elements) {
      sum = sum + datas;
    }
    return sum;
  }
}

void main() {
  Queue value = Queue();

  value.enque(20);
  value.enque(30);
  value.enque(40);
  value.enque(60);
  value.enque(90);
  value.deque();

  print(value.sum());
  value.display();
}
