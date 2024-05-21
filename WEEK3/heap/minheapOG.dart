class Heap {
  List<int> heap = [];

  minheap(List<int> store) {
    heap.addAll(store);
    buildheap();
  }

  buildheap() {
    for (int i = parentfind(heap.length - 1); i >= 0; i--) {
      shiftdown(i);
    }
  }

  shiftdown(int i) {
    int endIndex = heap.length - 1;
    int leftIndex = leftfind(i);
    while (leftIndex <= endIndex) {
      int rightIndx = rightfind(i);
      int indextoshift;

      if (rightIndx <= endIndex && heap[rightIndx] < heap[leftIndex]) {
        indextoshift = rightIndx;
      } else {
        indextoshift = leftIndex;
      }
      if (heap[i] > heap[indextoshift]) {
        swaping(heap, i, indextoshift);
        i = indextoshift;
        leftIndex = leftfind(i);
      } else {
        return;
      }
    }
  }

  shiftup(int i) {
    int parentIndx = parentfind(i);
    while (i > 0 && heap[parentIndx] > heap[i]) {
      swaping(heap, i, parentIndx);
      i = parentIndx;
      parentIndx = parentfind(i);
    }
  }

  insert(int value) {
    heap.add(value);
    shiftup(heap.length - 1);
  }

  remove(int i){
    swaping(heap, i, heap.length - 1);
    heap.removeLast();
    if (i < heap.length) {
      shiftdown(i);
      shiftup(i);
    }
  }

  display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }

  peak() {
    return heap.elementAt(0);
  }

  parentfind(int i) {
    return (i - 1) ~/ 2;
  }

  leftfind(int i) {
    return (i * 2) + 1;
  }

  rightfind(int i) {
    return (i * 2) + 2;
  }

  swaping(List<int> store, int i, int j) {
    int temp = store[i];
    store[i] = store[j];
    store[j] = temp;
  }
}

void main() {
  Heap values = Heap();
  List<int> store = [6, 2, 8];
  values.minheap(store);
  print("aaa");
  values.insert(1);
  values.insert(5);
  values.insert(15);
  // values.remove(5);

  values.display();
}
