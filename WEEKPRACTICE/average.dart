average(List<int> arr) {
  int sum = 0;

  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }

  int avg = sum ~/(arr.length);

  print(avg);
}

void main() {
  List<int> arr = [342, 235, 34, 456, 467];
  average(arr);

}
