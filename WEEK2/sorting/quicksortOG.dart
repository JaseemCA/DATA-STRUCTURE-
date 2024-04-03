class quick {
  quicksort(List<int> arr) {
    int start = 0;
    int end = arr.length - 1;

    quicksortfunction(arr, start, end);
    return arr;
  }

  quicksortfunction(List<int> arr, int start, int end) {
  if (start >= end) {
    return;
  }
  int pivot = start;
  int left = start + 1;
  int right = end;

  while (left <= right) {
    while (left <= right && arr[left] <= arr[pivot]) {
      left++;
    }
    while (left <= right && arr[right] >= arr[pivot]) {
      right--;
    }
    if (left < right) {
      swap(arr, left, right);
      left++;
      right--;
    }
  }
  swap(arr, right, pivot);
  quicksortfunction(arr, start, right - 1);
  quicksortfunction(arr, right + 1, end);
}


  swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }
}

void main() {
  quick value = quick();

  List<int> arr = [1, 2, 34, 52, 4, 1, 34, 45, 452, 34, 6, 78, 69796, 6];
  value.quicksort(arr);
  print(arr);
}
