class Stack {
  List<dynamic> arr = [];

  void push(dynamic value) {
    arr.add(value);
  }

  bool isempty() {
    return arr.isEmpty;
  }

  pop() {
    if (isempty()) {
      print("empty");
    }
    return arr.removeLast();
  }

  List<String> reverseList(List<String> input) {
    for (int i = 0; i < input.length; i++) {
      push(input[i]);
    }

    List<String> reversed = [];
    while (!isempty()) {
      reversed.add(pop());
    }
    return reversed;
  }
}

void main() {
  Stack value = Stack();
  List<String> inputList = ["jaseem", "peter", "john", "mary"];
  List<String> reversedList = value.reverseList(inputList);
  print(reversedList);
}
