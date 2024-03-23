class Insertion {
  insertionsort(List<int> arr) {
    for (int i = 1; i < arr.length; i++) {
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
  Insertion values = Insertion();

  List<int> arr = [22, 34, 545, 65, 64, 3, 3423, 355, 6, 67, 7];
  values.insertionsort(arr);
  print(arr);
}
