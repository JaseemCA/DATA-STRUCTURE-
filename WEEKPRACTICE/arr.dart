finfsum() {
  List<int> arr = [3, 52, 8, 9, 5, 32, 12];
  int target = 55;
  List<int> resu = [];

  for (int i = 0; i < arr.length - 1; i++) {
    for (int j = i+1; j < arr.length; j++) {
      if (arr[i] + arr[j] == target) {
        resu.addAll([arr[i], arr[j]]);
        break;
      }
    }
  }

  return resu;
}

void main() {
  var resu = finfsum();
  print(resu);
}
