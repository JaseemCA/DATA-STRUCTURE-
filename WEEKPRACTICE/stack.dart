class Stack {
  List<int> stack = [];



  void push(int value) {
    stack.add(value);
  }

  pop() {
    if (isEmpty()) {
      print('empty');
    } else {
      stack.removeLast();
    }
  }

  peek() {
    if (isEmpty()) {
      print('empty');
    } else {
      return stack.last;
    }
  }

  String Tostring() {
    return stack.toString();
  }

  void reverse() {
    List<int> reersed = [];
    while (!isEmpty()) {
      reersed.add(stack.removeLast());
    }
    stack = reersed;
    print(reersed);
  }
    bool isEmpty() {
    return stack.isEmpty;
  }

  display() {
    for (int i = 0; i < stack.length; i++) {
      print(stack[i]);
    }
  }

  sum() {
    var sum = 0;

    for (var num in stack) {
      sum = sum + num;
    }
    print(sum);
  }
}

void main() {
  Stack value = Stack();
  value.push(20);
  value.push(30);
  value.push(40);
  value.push(60);
  value.push(90);
  
  value.display();
}
