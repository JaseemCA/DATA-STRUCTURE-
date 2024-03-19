

class Sample {
  int binu(List<int> arr, int target, int start, int end) {
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

  List<int> arr = [2, 4, 6, 4, 3, 33, 86, 9, 88, 655, 3, 22, 1];
  arr.sort();
  print(arr);

  var resu = values.binu(arr, 16, 0, arr.length - 1);
  print(resu);
}
