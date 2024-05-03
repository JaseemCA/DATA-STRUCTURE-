import 'dart:indexed_db';

class Stack {
  List<int> num = [];

  bool isEmpty() {
    return num.isEmpty;
  }

  void push(int value) {
    num.add(value);
  }

  int pop() {
    if (isEmpty()) {
      print('empty');
    }
    return num.removeLast();
  }

  int peek() {
    if (isEmpty()) {
      print("empty");
    }
    return num.last;
  }

  void display() {
    print(num);
  }

  String toString() {
    return num.toString();
  }

  reverse() {
    List<int> reverse = [];
    while (!isEmpty()) {
      reverse.add(pop());
    }
    num = reverse;
  }
}
