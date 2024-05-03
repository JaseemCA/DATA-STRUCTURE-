maximum(List<int> arr) {
  int max = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] <= max) {
      max = arr[i];
    }
  }
  print(max);
}

void main() {
  List<int> arr = [2, 4, 6, 8, 0, 6, 4, 33, 2, 1, 5];
  maximum(arr);
}
