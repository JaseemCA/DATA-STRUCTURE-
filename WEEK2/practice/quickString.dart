

class quickString {
  List<dynamic> quicksort(List<dynamic> arr) {
    int start = 0;
    int end = arr.length - 1;

    quickfun(arr, start, end);
    return arr;
  }

  quickfun(List<dynamic> arr, int start, int end) {
    if (start >= end) {
      return;
    }

    int pivot = start;
    int left = start + 1;
    int right = end;

    while (left <= right) {
      if (arr[pivot].compareTo(arr[left]) < 0 &&
          arr[right].compareTo(arr[pivot]) < 0) {
        var temp = arr[left];
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
    var temp = arr[right];
    arr[right] = arr[pivot];
    arr[pivot] = temp;
    quickfun(arr, start, right - 1);
    quickfun(arr, right + 1, end);
  }
}

void main() {
  quickString value = quickString();
  List<dynamic> arr = ["jithu","danish", "minnu", "jubi", "miju", "ponnu"];
  value.quicksort(arr);
  print(arr);
}
