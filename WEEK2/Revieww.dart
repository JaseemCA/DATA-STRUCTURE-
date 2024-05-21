class Selection {
  selection(List<int> arr) {
    for (int i = 0; i < arr.length - 1; i++) {
      int midvalue = i;

      for (int j = i + 1; j < arr.length; j++) {
        if (arr[j] < arr[midvalue]) {
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
  Selection value = Selection();

  List<int> arr = [2, 5, 7, 3, 1];

  var result = value.selection(arr);
  print(result);
}
