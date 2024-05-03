findSecondLargest() {
  List<int> arr = [2, 3, 5, 6, 4, 44, 3, 22, 0];

  int first = arr[0];
  int second = arr[1];

  for (int i = 2; i < arr.length; i++) {
    if (arr[i] > first) {
      second = first;
      first = arr[i];
    } else if (arr[i] > second && arr[i] != first) {
      second = arr[i];
    }
  }
  return second;
}

void main() {
  var resu = findSecondLargest();
  print(resu);
}
