class Sample {
  binu(List<int> arr, int target, int start, int end) {
    if (start > end) {
      return -1;
    }

    int mid = start + (end - start) ~/ 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] > target) {
      return binu(arr, target, start, mid - 1);
    } else if (arr[mid] < target) {
      return binu(arr, target, mid + 1, end);
    }
  }
}

void main() {
  Sample list = Sample();

  List<int> arr = [1, 3, 5, 4, 32, 7, 89, 45, 12];
  arr.sort();
  print(arr);

  var resu = list.binu(arr, 122, 0, arr.length - 1);
  print(resu);
}
