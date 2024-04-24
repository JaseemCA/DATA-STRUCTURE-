findLargest(List<int> values) {
  int largest = 0;

  for (int i = 0; i < values.length; i++) {
    if (values[i] > largest) {
      largest = values[i];
    }
  }
  return largest;
}

void main() {
  List<int> values = [1, 2, 4, 45, 34, 577, 65, 78, 4, 342, 1231, 2];

  var resu = findLargest(values);

  print(resu);
}
