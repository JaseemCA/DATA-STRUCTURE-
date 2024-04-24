SumArray(List<int> arr) {
  int sum = 0;

  for (int i = 0; i < arr.length; i++) {
    sum = sum + arr[i];
  }
  print(sum);
}

void main() {
  List<int> arr = [2, 3, 4, 5, 6];
  SumArray(arr);
}
