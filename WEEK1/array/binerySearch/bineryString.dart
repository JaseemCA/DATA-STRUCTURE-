class sample {
  int bineryString(List<String> arr, trgt) {
    int start = 0;
    int end = arr.length;
    arr.sort();
    print(arr);

    while (start <= end) {
      int middle = (start + end) ~/ 2;

      if (arr[middle] == trgt) {
        return middle;
      } else if (arr[middle].compareTo(trgt) > 0) {
        end = middle--;
      } else {
        start = middle++;
      }
    }
    return -1;
  }
}

void main() {
  sample Sample = sample();
  List<String> arr = ['a', 'd', 'z', 'b', 'u', 'c', 'y'];
  var result = Sample.bineryString(arr, 'y');
  print(result);
}
