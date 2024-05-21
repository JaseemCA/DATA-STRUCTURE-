void main() {
  List<int> arr = [2, 3, 43, 25, 34, 3, 564, 5, 5, 5, 3, 21, 23];
  arr.sort();
  print(arr);

  List<int> unique = [];

  for (int i = 0; i < arr.length - 1; i++) {
    bool uniq = true;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        uniq = false;
      }
    }
    if (uniq) {
      unique.add(arr[i]);
    }
  }
  print(unique);
}
