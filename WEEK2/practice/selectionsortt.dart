class Sort {
  selection(List<int> arr) {
    for (int i = 0; i < arr.length-1; i++) {
      int midvalue = i;

      for (int j = i+1; j < arr.length; j++) {
        if (arr[j] > arr[midvalue]) {
          midvalue = j;
        }
      }
      if (midvalue != i) {
        int temp = arr[i];
        arr[i] = arr[midvalue];
        arr[midvalue] = temp;
      }
    }
    return arr;
  }
}

void main() {
  Sort value = Sort();

  List<int> arr = [342, 45, 67, 6900, 0, 0, 0, 1, 1, 12, 3333, 3, 33333];

  var resu = value.selection(arr);
  print(resu);
}
