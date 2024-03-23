class binu {
  int binery(List<int> arr, int target) {
    int start = 0;
    int end = arr.length-1;

    arr.sort();
    print(arr);

    while (start <= end) {
      int mid = start + (end - start) ~/ 2;

      if (arr[mid] == target) {
        return mid;
      } else if (arr[mid] > target) {
        end = mid - 1;
      } else if (arr[mid] < target) {
        start = mid + 1;
      }
    }
    return -1;
  }
}

void main() {
  binu value = binu();
  List<int> arr = [2, 3, 4, 5, 6, 7, 8, 8, 9];
  var resu = value.binery(arr, 5);
  print(resu);
}
