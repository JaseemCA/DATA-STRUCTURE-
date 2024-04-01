class Bubble {
  bubblesort(List<int> arr) {
    for (int i = 0; i <= arr.length - 1; i++) {
      int flag = 0;

      for (int j = 0; j < arr.length - 1 - i; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;

          flag = 1;
        }
      }
      if (flag == 0) {
        break;
      }
    }
  }
}

void main() {
  Bubble values = Bubble();
  List<int> arr = [2, 3, 3, 4, 5, 6, 8, 9, 77, 322, 344, 656];
  values.bubblesort(arr);
  print(arr);
}
