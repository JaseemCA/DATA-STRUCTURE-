class sorting {
  quicksort(List<int> arr) {
    int start = 0;
    int end = arr.length - 1;
    Quicksortfunc(arr, start, end);
    return arr;
  }

  Quicksortfunc(List<int> arr, int start, int end) {
    if (start >= end) {
      return;
    }

    int pivot = start;
    int left = start + 1;
    int right = end;

    while (left <= right) {
      if (arr[pivot] < arr[left] && arr[right] < arr[pivot]) {
        swap(arr, left, right);
        left++;
        right--;
      }

      if (arr[right] <= arr[pivot]) {
        left++;
      }
      if (arr[right] >= arr[pivot]) {
        right--;
      }
    }
    swap(arr, right, pivot);
    Quicksortfunc(arr, start, right - 1);
    Quicksortfunc(arr, right + 1, end);
  }

  swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}

void main() {
  sorting values = sorting();

  List<int> arr = [324, 56, 34, 4, 2, 46, 76, 878, 6, 554];

  var resu = values.quicksort(arr);
  print(resu);
}
