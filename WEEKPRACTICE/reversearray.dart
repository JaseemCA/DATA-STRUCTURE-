reverse() {
  List<int> arr = [2212, 234, 54, 6, 2, 235, 56, 1, 2,44];
  int i = 0;
  int j = arr.length - 1;

  while (i < j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    i++;
    j--;
  }
  print(arr);
}

void main() {
  reverse();
}
