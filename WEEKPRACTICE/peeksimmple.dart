peek() {
  List<int> arr = [21, 4, 56, 45, 7, 7, 888, 90, 0, 3];

  int peak = arr[0];

  for (int i = 0; i < arr.length-1; i++) {
    if (arr[i - 1] < arr[i] && arr[i + 1] < arr[i]) {
      peak = arr[i];
      break;
    }
  }

  print(peak);
}

void main() {
  peek();
}
