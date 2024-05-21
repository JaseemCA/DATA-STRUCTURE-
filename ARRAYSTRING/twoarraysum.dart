twoarr(List<int> arr1, List<int> arr2) {
  int sum = 0;

  for (int i = 0; i < arr1.length; i++) {
    for (int j = 0; j < arr2.length; j++) {
      sum = sum + (arr1[i] + arr2[j]);
    }
  }
  print(sum);
}

void main() {
  List<int> arr1 = [2];
  List<int> arr2 = [5];
  twoarr(arr1, arr2);
}
