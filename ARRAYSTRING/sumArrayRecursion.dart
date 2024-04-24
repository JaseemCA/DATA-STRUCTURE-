sumArray(List<int> arr, int index) {
  if (index >= arr.length) {
    return -1;
  }

  return arr[index] + sumArray(arr, index + 1);
}

void main() {
  List<int> arr = [12, 3, 43, 45, 67];
  var resu = sumArray(arr, 0);
  print(resu);
}
