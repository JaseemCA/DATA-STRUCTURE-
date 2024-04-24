class Binery {
  BineryRec(List<int> arr, int target, int start, int end) {
    if (start > end) {
      return -1;
    }

    int mid = start + (end - start) ~/ 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] > target) {
      return BineryRec(arr, target, start, mid - 1);
    } else if (arr[mid] < target) {
      return BineryRec(arr, target, mid + 1, end);
    }
  }
}

void main() {
  Binery value = Binery();

  List<int> arr = [2, 3, 5, 7, 8, 965, 3, 2];
  arr.sort();
  print(arr);

  var resu = value.BineryRec(arr, 965, 0, arr.length - 1);
  print(resu);
}
