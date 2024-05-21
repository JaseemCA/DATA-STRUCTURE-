class sample {
  
  binery(List<int> arr, int target, int start, int end) {
    if (start > end) {
      return -1;
    }

    int mid = start + (end + start) ~/ 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] > target) {
      return binery(arr, target, start, mid + 1);
    } else if (arr[mid] < target) {
      return binery(arr, target, mid + 1, end);
    }
  }
}

void main() {
  sample values = sample();

  List<int> arr = [23, 345, 356, 47, 58, 56];

  var resu = values.binery(arr, 356, 0, arr.length - 1);
  
  print(resu);


}
