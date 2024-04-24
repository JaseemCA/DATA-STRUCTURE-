class Binery {
  binerySearch(List<int> arr, int target) {
    int start = 0;
    int end = arr.length - 1;
    arr.sort();
    print(arr);

    while (start <= end) {
      int middle = start + (end - start) ~/ 2;

      if (arr[middle] == target) {
        return middle;
      } else if (arr[middle] > target) {
        end = middle - 1;
      } else if (arr[middle] < target) {
        start = middle + 1;
      }
    }
    return -1;
  }
}

void main() {
  Binery value = Binery();

  List<int> arr = [1, 5, 2, 4, 4, 7, 6, 78, 68, 7897, 5, 3, 22];
  var resu = value.binerySearch(arr, 7);
  print(resu);
}
