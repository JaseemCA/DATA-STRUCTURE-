

class Quicksort {
  Quick(List<int> arr) {
    int start = 0;
    int end = arr.length - 1;
    quickfunction(arr, start, end);
    return arr;
  }

  quickfunction(List<int> arr, int start, int end) {
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
        left--;
        right--;
      }
      if (arr[right] <= arr[pivot]) {
        left++;
      }
      if (arr[left] >= arr[pivot]) {
        right--;
      }
    }
    int temp = arr[right];
    arr[right] = arr[pivot];
    arr[pivot] = temp;
    quickfunction(arr, start, right - 1);
    quickfunction(arr, right + 1, end);
  }
}

void main() {
  Quicksort values = Quicksort();
  List<int> arr = [13, 245, 36, 6, 67, 89, 78, 780, 25, 346, 47, 3];
  List<int>resu = values.Quick(arr);
  print(resu);
}
