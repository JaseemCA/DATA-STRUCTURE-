class bubble {
  bubblesort(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int flag = 0;
      for (int j = 0; j < arr.length - 1 - i; j++) {
        if (arr[j] > arr[j + 1]) {
          swap(arr, j, j + 1);
          flag = 1;
        }
        
      }
      if (flag == 1) {
        break;
      }
    }
  }

  swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}


void main() {
  bubble values = bubble();

  List<int> arr = [1, 43, 5, 6, 4, 32, 5, 7, 876, 689, 65, 45];
  values.bubblesort(arr);
  print(arr);
}
