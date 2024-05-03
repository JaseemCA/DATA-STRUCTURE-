reverse() {
  List<int> arr = [23, 25, 45, 346, 5, 57, 67, 67];

  int i = 0;
  int j = arr.length - 1;

  while (i < j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
    i++;
    j--;
  }
  return arr;
}

void main() {
  var resu = reverse();
  print(resu);
}
