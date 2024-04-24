class Bubble {
  bublesort(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      for (int j = 0; j < arr.length - 1 - i; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
  }
}

void main() {
  Bubble value = Bubble();
  List<int> arr = [323, 23, 3453, 356, 47, 568, 67, 4];

  value.bublesort(arr);
  print(arr);
}
