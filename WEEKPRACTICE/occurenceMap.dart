occurence(List<int> arr) {
  Map<int, int> resu = {};

  for (var val in arr) {
    resu[val] = (resu[val] ?? 0) + 1;
  }
  for (int val in resu.keys) {
    print(resu[val]);
  }
}

void main() {
  List<int> arr = [3, 65, 2, 2, 2, 4, 7, 1, 2, 1, 1, 1, 1, 4, 3, 3];

  occurence(arr);

}
