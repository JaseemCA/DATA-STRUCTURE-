class Sample {
  binery(List<int> arr, int target) {
    int start = 0;
    int end = arr.length - 1;
    arr.sort();

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
  List<int> arr = [12, 34, 252, 5, 36, 36, 47, 4, 45736, 234];

  Sample value = Sample();
  var resu = value.binery(arr, 36);
  print("Value found at the position ${resu}");
}
