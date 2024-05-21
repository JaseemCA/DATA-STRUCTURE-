class insertion {
  indertionsort(List<int> arr) {
    for (int i = 1; i < arr.length; i++) {
      int temp = arr[i];
      int j = i - 1;

      while (j >= 0 && arr[j] > temp) {
        arr[j + 1] = arr[j];
        j--;
      }

      arr[j + 1] = temp;
    }
    return arr;
  }
}

void main() {
  insertion value = insertion();

  List<int> arr = [2, 2, 435, 36, 456, 789, 0, 00, 43, 34, 11, 1, 1, 134, 3456];

  var resu = value.indertionsort(arr);
  print(resu);
}
