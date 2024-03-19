class sample {
  int binery(List<int> arr, target) {
    int start = 0;
    int end = arr.length - 1;
    arr.sort();
    print(arr);

    while (start <=end) {
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
  sample values = sample();
  List<int> arr = [1, 2, 4, 6, 3, 4, 98, 7];
  var resu = values.binery(arr, 3);
  print(resu);
} 
