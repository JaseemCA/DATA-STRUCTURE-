class StackUsingQueue {
  List<int> _queue1 = [];
  List<int> _queue2 = [];

  void push(int item) {
    // Add the new item to queue1
    _queue1.add(item);
  }

   pop() {
    if (_queue1.isEmpty) {
      return null; // Stack is empty
    }

    // Move all elements from queue1 to queue2, except the last one
    while (_queue1.length > 1) {
      _queue2.add(_queue1.removeAt(0));
    }

    // Pop the last element from queue1 (top of stack)
    int poppedItem = _queue1.removeAt(0);

    // Swap queue1 and queue2
    var temp = _queue1;
    _queue1 = _queue2;
    _queue2 = temp;

    return poppedItem;
  }

   top() {
    if (_queue1.isEmpty) {
      return null; // Stack is empty
    }

    // Move all elements from queue1 to queue2, except the last one
    while (_queue1.length > 1) {
      _queue2.add(_queue1.removeAt(0));
    }

    // Get the last element from queue1 (top of stack)
    int topItem = _queue1[0];

    // Move the last element back to queue1
    _queue2.add(_queue1.removeAt(0));

    // Swap queue1 and queue2
    var temp = _queue1;
    _queue1 = _queue2;
    _queue2 = temp;

    return topItem;
  }

  bool isEmpty() {
    return _queue1.isEmpty;
  }
}

void main() {
  var stack = StackUsingQueue();
  stack.push(1);
  stack.push(2);
  stack.push(3);

  print("Top of stack: ${stack.top()}"); // Output: 3
  print("Popped: ${stack.pop()}"); // Output: 3
  print("Top of stack: ${stack.top()}"); // Output: 2
  print("Is stack empty? ${stack.isEmpty()}"); // Output: false
}
