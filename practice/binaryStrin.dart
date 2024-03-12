class Sample {
  int binaryString(List<String> arr, target) {
    int start = 0;
    int end = arr.length;
    arr.sort();
    print(arr);
    while (start <= end) {
      int middle = (start + end) ~/ 2;

      if (arr[middle] == target) {
        return middle;
      } else if (arr[middle].compareTo(target) > 0) {
        end = middle - 1;
      } else {
        start = middle + 1;
      }
    }
    return -1;
  }
}

void main() {
  Sample sample = Sample();
  List<String> arr = ['p', 'r', 'y', 't'];
  var result = sample.binaryString(arr, 'y');
  print(result);
}
