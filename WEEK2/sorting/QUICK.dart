class Quicksort {
  List<dynamic> quicksort(List<dynamic> arr) {
    int start = 0;
    int end = arr.length - 1;

    quickFunc(arr, start, end);
    return arr;
  }

  void quickFunc(List<dynamic> arr, int start, int end) {
    if (start >= end) {
      return;
    }

    dynamic pivot = arr[(start + end) ~/ 2]; 
    int left = start;
    int right = end;

    while (left <= right) {
      while (arr[left] > pivot) {
        left++;
      }

      while (arr[right] < pivot) {
        right--;
      }

      if (left <= right) {
        dynamic temp = arr[left];
        arr[left] = arr[right];
        arr[right] = temp;
        left++;
        right--;
      }
    }

    quickFunc(arr, start, right);
    quickFunc(arr, left, end);
  }
}

void main() {
  Quicksort sorter = Quicksort();

  List<dynamic> arr = [9999, 234, 25, 2, 0, 199, 1,2,3,4,51, 0, 345, 1, 345,0];

  arr = sorter.quicksort(arr);
  print(arr);
}