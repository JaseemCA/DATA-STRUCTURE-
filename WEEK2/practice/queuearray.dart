class Queue {
  List<int> elements = [];
  

  void enque(dynamic data) {
    elements.add(data);
    
  }

  int? deque() {
    if (elements.isNotEmpty) {
      return elements.removeAt(0);
    } else {
      return null;
    }
  }

  size() {
    elements.length;
  }

  bool isempty() {
    return elements.isEmpty;
  }

  dynamic peek() {
    if (elements.isNotEmpty) {
      return elements[0];
    } else {
      return null;
    }
  }

  void clear() {
    elements.clear();
  }

  void display() {
    print(elements);
  }
}

void main() {
  Queue value = Queue();

  value.enque(12);
  value.enque(23);
  value.enque(34);
  value.enque(55);
  print(value.size());
  // value.deque();
  value.display();
  print(value.peek());
}
