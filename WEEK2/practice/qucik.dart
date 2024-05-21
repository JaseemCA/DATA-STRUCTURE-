class Quick {
  quicksort(List<int> arr) {
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
    int rigth = end;

    while (left <= rigth) {
      if (arr[pivot] < arr[left] && arr[rigth] < arr[pivot]) {
        int temp = arr[left];
        arr[left] = arr[rigth];
        arr[rigth] = temp;
        left++;
        rigth--;
      }
      if (arr[rigth] <= arr[pivot]) {
        left++;
      }
      if (arr[pivot] >= arr[pivot]) {
        rigth--;
      }

      int temp = arr[rigth];
      arr[rigth] = arr[left];
      arr[left] = temp;

      quickfunction(arr, start, rigth - 1);
      quickfunction(arr, rigth + 1, end);
    }
  }
}

void main() {
  List<int> arr = [255, 346, 47, 47, 4563, 54245, 235, 7];
  Quick values = Quick();


  var result = values.quicksort(arr);
  print(result);
}
