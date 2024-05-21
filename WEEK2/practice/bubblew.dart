class bubble {
  bubblesort(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
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
    return arr;
  }
}

void main() {
  bubble value = bubble();

  List<int> arr = [124, 34, 425, 56, 4756, 9, 9, 0, 01, 1, 12234, 234, 51, 1];

  List<int> resu = value.bubblesort(arr);
  print(resu);
}
