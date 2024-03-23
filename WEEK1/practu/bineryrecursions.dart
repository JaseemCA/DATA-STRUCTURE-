class binery {
  bineryrecu(List<int> arr, int target, int start, int end) {
    if (start > end) {
      return -1;
    }

    int mid = start + (end - start) ~/ 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] > target) {
      return bineryrecu(arr, target, start, mid - 1);
    } else if (arr[mid] < target) {
      return bineryrecu(arr, target, mid + 1, end);
    }
  }
}

void main() {
  binery values = binery();

  List<int> arr = [2, 4, 5, 6, 7, 8, 8, 6];
  arr.sort();
  print(arr);
  var resu = values.bineryrecu(arr, 7, 0, arr.length - 1);
  print(resu);
  
}
