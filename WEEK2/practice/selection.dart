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

  List<int> arr = [12, 3423, 235, 345, 32, 234, 5234, 53, 44, 6, 36];
  value.selectionsort(arr);
  print(arr);
}
