class Sort {
   heapify(int i, List<int> store, int length) {
    int largest = i;
    int left = 2 * i + 1;
    int right = 2 * i + 2;
    if (left < length && store[left] > store[largest]) {
      largest = left;
    }
    if (right < length && store[right] > store[largest]) {
      largest = right;
    }
    if (i != largest) {
      swapingfun(store, i, largest);
      heapify(largest, store, length);
    }
  }

   sorting(List<int> store) {
    int length = store.length;
    for (int i = length ~/ 2 -1; i >= 0; i--) {
      heapify(i, store, length);
    }
    for (int i = length - 1; i >= 0; i--) {
      swapingfun(store, i, 0);
      heapify(0, store, i);
    }
  }

 swapingfun(List<int> store, int i, int j) {
  int temp = store[i];
  store[i] = store[j];
  store[j] = temp;
}

}



void main() {
  Sort value = Sort();
  List<int> numbers = [
    124311,
    2,
    11,
    13,
    5,
    6,
    7,
    0,
    08,
    7,
    796,
    8578,
    56,
    74,
    563,
    0,
    0,
    0
  ];
  print("Original List: $numbers");
  value.sorting(numbers);
  print("Sorted List: $numbers");
}
