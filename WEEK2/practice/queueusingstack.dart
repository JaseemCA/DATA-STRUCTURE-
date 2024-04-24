class QueStack {
  List<int> Stack1 = [];
  List<int> Stack2 = [];

  void enque(int item) {
    while (Stack1.isNotEmpty) {
      Stack2.add(Stack1.removeLast());
    }
    Stack1.add(item);
    while (Stack2.isNotEmpty) {
      Stack1.add(Stack2.removeLast());
    }
  }

  deque() {
    if (Stack1.isEmpty) {
      return null;
    }
    return Stack1.removeLast();
  }

  front() {
    if (Stack1.isEmpty) {
      return null;
    } else {
      return Stack1.last;
    }
  }

  display() {
    print(Stack1);
  }
}

void main() {
  QueStack values = QueStack();

  values.enque(10);
  values.enque(20);
  values.enque(40);
  values.enque(40);
  values.enque(30);
  values.enque(40);
  values.deque();
  values.display();
}
