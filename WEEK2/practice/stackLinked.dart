class node {
  int? value;
  node? next;
  node(this.value);
}

class stack {
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
    node? temp = top;

    if (temp == null) {
      print("empty");
    }
    while (temp != null) {
      print(temp.value);
      temp = temp.next;
    }
  }

  pop() {
    if (top == null) {
      print('stackk is empty');
    } else {
      top = top?.next;
    }
  }

  peek() {
    if (top == null) {
      print('empty');
    } else {
      print(top!.value);
    }
  }
}

void main() {
  stack values = stack();

  values.push(10);
  values.push(20);
  values.push(30);
  values.pop();

  values.display();
}
