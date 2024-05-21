
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
      if (arr[right] >= arr[pivot]) {
        left++;
      }
      if (arr[right] <= arr[pivot]) {
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
  List<int> arr = [231, 34, 23, 423, 4, 53, 5445, 6658, 768, 0];
  values.Quick(arr);
  List<int> resu = values.Quick(arr);
  print(resu);
}
