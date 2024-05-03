sumarrray(List<int> arr) {
  int sum = 0;

  for (int i = 0; i < arr.length; i++) {
    sum = sum + arr[i];
  }
  print(sum);
}

void main() {
  List<int> arr = [23, 32, 245, 356, 45, 75, 6786, 7, 8];
  sumarrray(arr);
}
