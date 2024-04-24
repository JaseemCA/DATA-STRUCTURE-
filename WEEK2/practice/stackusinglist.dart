class stack {
  List<int> nums = [];

  bool isEmpty() {
    return nums.isEmpty;
  }

  void push(int values) {
    nums.add(values);
  }

  int pop() {
    if (isEmpty()) {
      print("empty");
    }
    return nums.removeLast();
  }

  int peek() {
    if (isEmpty()) {
      print("empty");
    }
    return nums.last;
  }

  void display() {
    print(nums);
  }

  String tostring() {
    return nums.toString();
  }

  void sum() {
    int sum = 0;
    for (var elements in nums) {
      sum = sum + elements;
    }
  }

  reverse() {
    List<int> reverse = [];
    while (!isEmpty()) {
      reverse.add(pop());
    }
    nums = reverse;
  }
}

void main() {
  stack values = stack();
  values.push(10);
  values.push(20);
  values.push(40);
  values.push(30);
  values.push(60);
  values.push(90);
  values.pop();
  // values.reverse();
  var p = values.peek();
  print(p);
  values.display();
}
