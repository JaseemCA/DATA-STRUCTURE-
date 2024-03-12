class Sample {
  int binerySearch(List<int> array, int target) {
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
  List<int> array = [1, 3, 4, 5, 6, 7, 8, 9, 3, 1, 2, 4];

  var res = sample.binerySearch(array, 2);
  print(res);
}
