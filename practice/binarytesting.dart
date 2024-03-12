class Sample {
  int binarysearch(List<int> array, target) {
    int start = 0;
    int end = array.length - 1;
    array.sort();

    while (start <= end) {
      int middle = start + (end - start) ~/ 2;
      if (array[middle] == target) {
        return middle;
      } else if (array[middle] > target) {
        end = middle - 1;
      } else if (array[middle] < target) {
        start = middle + 1;
      }
    }
    return -1;
  }
}

void main() {
  Sample sample = Sample();
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  var result = sample.binarysearch(array, 23);
  print(result);
}
