class Sample {
  int binery(List<int> arr, int target) {
    int start = 0;
    int end = arr.length - 1;

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
  Sample values = Sample();

  List<int> arr = [2, 3, 5, 6, 7, 8, 5, 9, 55, 33, 22];

  arr.sort();
  print(arr);

  var resu = values.binery(arr, 23);
  print(resu);
}
