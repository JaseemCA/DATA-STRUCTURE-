class quick {
  quicksort(List<int> arr) {
    int start = 0;
    int end = arr.length - 1;

    Quickfun(arr, start, end);
    return arr;
  }

  Quickfun(List<int> arr, int start, int end) {
    if (start >= end) {
      return;
    }
    int pivot = start;
    int left = start + 1;
    int right = end;

    while (left <= right) {
      if (arr[pivot] < arr[left] && arr[right] < arr[pivot]) {
        int temp = arr[left];
        arr[left] = arr[right];
        arr[right] = temp;

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
    int temp = arr[right];
    arr[right] = arr[pivot];
    arr[pivot] = temp;

    Quickfun(arr, start, right - 1);
    Quickfun(arr, right + 1, end);
  }
}

void main() {
  quick values = quick();

  List<int> arr = [23, 345, 6, 4, 57, 8, 3];
  values.quicksort(arr);
  print(arr);
}
