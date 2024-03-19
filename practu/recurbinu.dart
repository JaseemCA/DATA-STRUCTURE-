class Sample {
  binurecu(List<int> arr, int target, int start, int end) {
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
  Sample values = Sample();
  List<int> arr = [5, 3, 2, 6, 8, 7, 6, 3, 9];
  int target = 9;

  arr.sort();
  print(arr);

  var resu = values.binurecu(arr, target, 0, arr.length - 1);
  if (resu == -1) {
    print("traget not found");
  } else {
    print("$target found at $resu");
  }
}
