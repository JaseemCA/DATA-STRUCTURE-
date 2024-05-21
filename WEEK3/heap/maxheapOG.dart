class Heap {
  List<int> heap = [];

  maxHeap(List<int> store) {
    heap.addAll(store);
    buidHeap();
  }

  buidHeap() {
    for (int i = parentFind(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  shiftDown(int i) {
    int endindex = heap.length - 1;
    int leftindex = leftFind(i);

    while (leftindex <= endindex) {
      int rightindex = rightFind(i);
      int indextoshift;
      if (rightindex <= endindex && heap[rightindex] > heap[leftindex]) {
        indextoshift = rightindex;
      } else {
        indextoshift = leftindex;
      }
      if (heap[i] < heap[indextoshift]) {
        swap(heap, i, indextoshift);
        i = indextoshift;
        leftindex = leftFind(i);
      } else {
        return;
      }
    }
  }

  shiftUp(int i) {
    int parentindex = parentFind(i);
    while (i > 0 && heap[parentindex] < heap[i]) {
      swap(heap, i, parentindex);
      i = parentindex;
      parentindex = parentFind(i);
    }
  }

  remove(int i) {
    swap(heap, i, heap.length - 1);
    heap.removeLast();
    if (i < heap.length) {
      shiftDown(i);
      shiftUp(i);
    }
  }

  insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  swap(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }

  leftFind(int i) {
    return (i * 2) + 1;
  }

  rightFind(int i) {
    return (i * 2) + 2;
  }

  parentFind(int i) {
    return (i - 1) ~/ 2;
  }

  display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }
}

void main() {
  Heap value = Heap();

  List<int> store = [];

  value.insert(1);
  value.insert(2);
  value.insert(3);
  value.insert(4);
  value.insert(5);

  value.maxHeap(store);

  value.display();
}
