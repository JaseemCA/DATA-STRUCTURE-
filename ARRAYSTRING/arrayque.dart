common(List<int> arr1, List<int> arr2) {
  List<int> resul = [];

  for (int i = 0; i < arr1.length; i++) {
    for (int j = 0; j < arr2.length; j++) {
      if (arr1[i] == arr2[j]) {
        resul.add(arr1[i]);
      }
    }
  }

  print(resul);
  
}

void main() {
  List<int> arr1 = [2, 4, 5, 6, 3];
  List<int> arr2 = [3, 4, 5, 2, 43, 12];
  common(arr1, arr2);
}
