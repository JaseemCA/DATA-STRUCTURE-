class HeapSort {
  // Heapify function to maintain the min-heap property
  void heapify(List<int> arr, int i, int length) {
    int smallest = i; // Initialize the smallest as root
    int left = 2 * i + 1; // Left child index
    int right = 2 * i + 2; // Right child index

    // If the left child is smaller than the root
    if (left < length && arr[left] < arr[smallest]) {
      smallest = left;
    }

    // If the right child is smaller than the smallest so far
    if (right < length && arr[right] < arr[smallest]) {
      smallest = right;
    }

    // If the smallest is not the root
    if (smallest != i) {
      swap(arr, i, smallest);
      heapify(arr, smallest, length); // Recursively heapify the affected sub-tree
    }
  }

  // Function to perform heap sort
  void heapSorting(List<int> arr) {
    int length = arr.length;

    // Build min-heap
    for (int i = length ~/ 2 - 1; i >= 0; i--) {
      heapify(arr, i, length);
    }

    // Extract elements from the heap one by one
    for (int i = length - 1; i >= 0; i--) {
      swap(arr, i, 0); // Move current root to end
      heapify(arr, 0, i); // Call min-heapify on the reduced heap
    }
  }

  // Function to swap two elements in the list
  void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}

void main() {
  List<int> numbers = [124311, 0, 5, 567, 47496, 8578, 0];

  HeapSort sorter = HeapSort();
  sorter.heapSorting(numbers);
  print(numbers);
}
