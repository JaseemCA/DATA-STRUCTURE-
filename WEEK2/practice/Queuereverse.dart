class Queue {
  List<dynamic> arr = [];

  void enqueue(String value) {
    arr.add(value);
  }

  bool isEmpty() {
    return arr.isEmpty;
  }

  String dequeue() {
    if (isEmpty()) {
      print("empty");
      return "";
    }
    return arr.removeAt(0);
  }

  String reverseString(String input) {
    for (int i = 0; i < input.length; i++) {
      enqueue(input[i]);
    }
    String reverse = '';
    while (!isEmpty()) {
      reverse += dequeue();
    }
    return reverse;
  }

  List<String> reverseList(List<String> Input) {
    for (int i = 0; i < Input.length; i++) {
      enqueue(Input[i]);
    }
    List<String> reversed = [];
    while (!isEmpty()) {
      reversed.insert(0, dequeue());
    }
    return reversed;
  }
}

void main() {
  Queue values = Queue();
  String input = "jaseem peter";
  String resu = values.reverseString(input);
  print(resu);
  List<String> Input = ["jaseem", "adnan", "faisal", "fareed"];
  List<String> result = values.reverseList(Input);
  print(result);
}
