class Quicksort {
  List<dynamic> quicksort(List<dynamic> arr) {
    int start = 0;
    int end = arr.length - 1;

    quickfunc(arr, start, end);
    return arr;
  }

  void quickfunc(List<dynamic> arr, int start, int end) {
    if (start >= end) {
      return;
    }
    int pivot = start;
    int left = start + 1;
    int right = end;
    while (left <= right) {
      if (arr[pivot].compareTo(arr[left]) < 0 && arr[right].compareTo(arr[pivot]) < 0) {
        String temp = arr[left];
        arr[left] = arr[right];
        arr[right] = temp;
        left++;
        right--;
      }
      if (arr[right].compareTo(arr[pivot]) <= 0) {
        left++;
      }
      if (arr[right].compareTo(arr[pivot]) >= 0) {
        right--;
      }
    }
    String temp = arr[right];
    arr[right] = arr[pivot];
    arr[pivot] = temp;
    quickfunc(arr, start, right - 1);
    quickfunc(arr, right + 1, end);
  }
}

void main() {
  Quicksort value = Quicksort(); 

  List<dynamic> arr = ["banana", "apple", "orange", "grape", "cherry"];

  value.quicksort(arr);
  print(arr);
}
