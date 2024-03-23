class sample {
  binurecu(List<int> arr, int target, int start, int end) {
    arr.sort();
    if (start > end) {
      return -1;
    }

    int mid = start + (end - start) ~/ 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] > target) {
      return binurecu(arr, target, start, mid - 1);
    } else if (arr[mid] < target) {
      return binurecu(arr, target, mid + 1, end);
    }
  }
}

void main() {
  sample value = sample();

  List<int> arr = [1, 2, 3, 5, 6, 7, 8, 9, 5];

  int target = 0;
  arr.sort();
  print(arr);
  var resu = value.binurecu(arr, target, 0, arr.length - 1);
  print("$target found at $resu");
}
