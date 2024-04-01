class Insert {
  insert(List<int> arr) {
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
  Insert values = Insert();
  List<int> arr = [24, 3, 5, 57, 565, 3432, 56, 89, 3];
  values.insert(arr);
  print(arr);
}
