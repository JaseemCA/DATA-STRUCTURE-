class QueueUsingStack {
  List<int> _stack1 = [];
  List<int> _stack2 = [];

  void enqueue(int item) {
    // Move all elements from stack1 to stack2
    while (_stack1.isNotEmpty) {
      _stack2.add(_stack1.removeLast());
    }

    // Add the new item to stack1
    _stack1.add(item);

    // Move all elements back from stack2 to stack1
    while (_stack2.isNotEmpty) {
      _stack1.add(_stack2.removeLast());
    }
  }

   dequeue() {
    if (_stack1.isEmpty) {
      return null; // Queue is empty
    }
    // Pop from the top of stack1 (front of queue)
    return _stack1.removeLast();
  }

   front() {
    if (_stack1.isEmpty) {
      return null; // Queue is empty
    }
    // Return the top element of stack1 (front of queue)
    return _stack1.last;
  }

  bool isEmpty() {
    return _stack1.isEmpty;
  }
}

void main() {
  var queue = QueueUsingStack();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);

  print("Front of queue: ${queue.front()}"); // Output: 1
  print("Dequeued: ${queue.dequeue()}");      // Output: 1
  print("Front of queue: ${queue.front()}"); // Output: 2
  print("Is queue empty? ${queue.isEmpty()}");  // Output: false
}

