class Quicksort {
  quicksort(List<dynamic> arr) {
    int start = 0;
    int end = arr.length - 1;

    Quickfunc(arr, start, end);
    return arr;
  }

  Quickfunc(List<dynamic> arr, int start, int end) {
    if (start >= end) {
      return;
    }
    int pivot = arr[(start + end) ~/ 2];
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
    Quickfunc(arr, start, right - 1);
    Quickfunc(arr, right + 1, end);
  }
}


void main() {
  Quicksort value = Quicksort();

  List<dynamic> arr = [123, 234, 25 ,2 ,0,0,1,0,345,1, 345];

  value.quicksort(arr);
  print(arr);
}
