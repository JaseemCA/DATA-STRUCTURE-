unique(List<int> arr) {
  List<int> Uniq = [];
  arr.sort();
  bool uniq = true;
  for (int i = 0; i < arr.length - 1; i++) {
    if (arr[i] == arr[i + 1]) {
      uniq = false;
    }

    if (uniq) {
      Uniq.add(arr[i]);
    }
  }
  return Uniq;
}

void main() {
  List<int> arr = [23, 43, 54, 3, 21, 1, 1, 1, 34, 66, 66, 23, 3, 21];

  unique(arr);
}
