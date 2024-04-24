uniqueElements(List<int> arr) {
  List<int> uniq = [];

  for (int i = 0; i < arr.length; i++) {
    bool Uniq = true;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        Uniq = false;
        break;
      }
    }
    if (Uniq) {
      uniq.add(arr[i]);
    }
  }
  return uniq;
}

void main() {
  List<int> arr = [1, 2,2, 3, 3, 5, 6, 0, 0, 1, 8, 5];
  var resu = uniqueElements(arr);
  print(resu);
}
