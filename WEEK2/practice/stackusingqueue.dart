class stackusinque {
  List<int> q1 = [];
  List<int> q2 = [];

  void push(int item) {
    q1.add(item);
  }

  pop() {
    if (q1.isEmpty) {
      return null;
    }
    while (q1.length > 1) {
      q2.add(q1.removeAt(0));
    }
    int poped = q1.removeAt(0);
    var temp = q1;
    q1 = q2;
    q2 = temp;
    return poped;
  }

  top() {
    if (q1.isEmpty) {
      return null;
    }
    while (q1.length > 1) {
      q2.add(q1.removeAt(0));
    }
    int topitem = q1[0];
    q2.add(q1.removeAt(0));
    var temp = q1;
    q1 = q2;
    q2 = temp;
    return topitem;
  }

  display() {
    print(q1);
  }
}

void main() {
  stackusinque value = stackusinque();
  value.push(10);
  value.push(20);
  value.push(30);
  value.push(22);
  value.pop();
  value.display();
}
