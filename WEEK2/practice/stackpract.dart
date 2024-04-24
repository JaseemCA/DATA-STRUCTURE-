class node {
  int? value;
  node? next;

  node(this.value);
}

class Stack {
  node? top;

  push(int value) {
    node newnode = node(value);
    if (top == null) {
      top = newnode;
    } else {
      newnode.next = top;
      top = newnode;
    }
  }

  display() {
    if (top == null) {
      print("stack is empty");
    }
    node? temp = top;
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }

  pop() {
    node? temp = top;
    if (temp == null) {
      print('stack is empty');
    } else {
      top = top?.next;
    }
  }

  peek() {
    if (top == null) {
      print('empty');
    } else {
      print(top?.value);
    }
  }
}
