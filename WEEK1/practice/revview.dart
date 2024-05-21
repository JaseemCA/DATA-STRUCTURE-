class binery {
  int Binery(List<int> arr, target) {
    int start = 0;

    int end = arr.length - 1;

    print(arr);
    while (start < end) {
      int middile = start + (end - start) ~/ 2;

      if (arr[middile] == target) {
        return middile;
      } else if (arr[middile] > target) {
        end = middile - 1;
      } else if (arr[middile] < target) {
        start = middile + 1;
      }
    }
    return -1;
  }
}

void main() {
  binery values = binery();
  List<int> arr = [2, 23, 25, 36, 47, 67, 58, 4];
  arr.sort();
  var result = values.Binery(arr, 47);

  print(result);
  arr[result] = 0;
  print(arr);

  
}
