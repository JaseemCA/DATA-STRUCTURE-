class heapSort {
  Heapify(List<int> arr, int i, int length) {
    int larget = i;  // Initialize the index of the largest element as i
    int left = 2 * i + 1; // Calculate the index of the left child
    int right = 2 * i + 2;  // Calculate the index of the right child


     // If left child is larger than the largest so far
    if (left < length && arr[left] > arr[larget]) {
      larget = left;
    }

      // If right child is larger than the largest so far
    if (right < length && arr[right] > arr[larget]) {
      larget = right;
    }

      // If largest is not the root
    if (larget != i) {
      swap(arr, i, larget);
      Heapify(arr, larget, length); // Recursively heapify the affected sub-tree
    }
  }

  heapSorting(List<int> arr) {
    int length = arr.length;
     // Build max heap
    for (int i = length ~/ 2-1 ; i >= 0; i--) { //for building and length ~/2 is to take the last parent
      Heapify(arr, i, length);
    }
     // Extract elements from the heap one by one
    for (int i = length-1; i >= 0; i--) {  
      swap(arr, i, 0);  // Swap the root (max element) with the last element
      Heapify(arr, 0, i); // Heapify the reduced heap
    }
  }

  swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}

void main() {
  List<int> numbers = [124311, 0,5,567,47496, 8578, 0];

  heapSort value = heapSort();
  value.heapSorting(numbers);
  print(numbers);
}
