class insertion {
  insertionsort(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      int temp = arr[i];
      int j = i - 1;
      while (j >= 0 && arr[j] > temp) {
        arr[j + 1] = arr[j];
        j--;
      }
      arr[j + 1] = temp;
    }
  }
}

void main() {
  insertion values = insertion();

  List<int> arr = [12, 23, 4234, 43234, 235, 425];

  values.insertionsort(arr);

  print(arr);
}
