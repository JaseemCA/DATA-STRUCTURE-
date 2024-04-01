class Selection {
  selectionsort(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int minvalue = i;
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[j] < arr[minvalue]) {
          minvalue = j;
        }
      }
      if (minvalue != i) {
        int temp = arr[i];
        arr[i] = arr[minvalue];
        arr[minvalue] = temp;
      }
    }
  }
}

void main() {
  Selection value = Selection();

  List<int> arr = [22, 34, 5, 56, 46, 32, 2, 355, 45, 6, 7, 89, 9];
  print(arr);
  value.selectionsort(arr);
  print(arr);
}
