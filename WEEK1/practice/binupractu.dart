class Sample {
  int Binery(List<int> arr, target) {
    int start = 0;
    int end = arr.length - 1;
    arr.sort();
    print(arr);

    while (start <= end) {
      int middle = start + (end - start) ~/ 2;

      if (arr[middle] == target) {
        return target;
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
  Sample values = Sample();
  List<int> arr = [4, 6, 7, 4, 3, 2, 8, 0];
  var resu = values.Binery(arr, 2);
  print(resu);
}
