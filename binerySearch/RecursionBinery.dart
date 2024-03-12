import 'dart:convert';

class sapmle {
  int bineryrecursion(List<int> arr, int target, int start, int end) {
   
    if (start > end) {
      return -1;
    }
    
    int mid = start + (end - start) ~/ 2;

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] > target) {
      return bineryrecursion(arr, target, start, mid - 1);
    } else {
      return bineryrecursion(arr, target, mid + 1, end);
    }
  }
}

void main() {
  sapmle values = sapmle();

  List<int> arr = [1, 2, 3, 6, 4, 3, 7, 8, 7, 9];
  int target = 6;
   arr.sort();
    print(arr);

  int result = values.bineryrecursion(arr, target, 0, arr.length - 1);
  print(result);
}
