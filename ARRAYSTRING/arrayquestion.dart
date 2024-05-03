addingadjesent(List<int> arr) {
  List<int> result = [];
  int sum = 0;

  for (int i = 0; i < arr.length - 1; i++) {
    sum = arr[i] + arr[i + 1];

    result.add(sum);
  }

  print(result);
}

void main() {
  List<int> arr = [12, 32, 45, 67, 89, 53,2];

  addingadjesent(arr);
}
