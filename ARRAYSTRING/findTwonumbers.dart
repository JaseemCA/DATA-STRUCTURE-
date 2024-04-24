class Sample {
  TwoNumber(List<int> arr, int target) {
    List<int> result = [];

    for (int i = 0; i < arr.length; i++) {
      for (int j = i + 1; j < arr.length; i++) {
        if (arr[i] == arr[j]) {
          result.add(arr[i]);
          result.add(arr[j]);
        }
      }
    }
    return result;
  }
}

void main() {
  Sample values = Sample();

  List<int> arr = [1, 3, 5, 6, 7, 9, 2, 9];
  int target = 18;
  var resu = values.TwoNumber(arr, target);
  print(resu);
}
