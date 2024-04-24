unMatched(List<int> arr1, List<int> arr2) {

  List<int> unmatched = [];
  for (int i = 0; i < arr1.length; i++) {
    if (!arr2.contains(arr1[i])) {
      unmatched.add(arr1[i]);
    }
  }

  
  print(unmatched);

}

void main() {
  List<int> arr1 = [2, 3, 5, 6, 7, 6, 54, 3, 2, 1];
  List<int> arr2 = [3, 4, 6, 8, 9, 32, 1, 2, 4, 5];
  unMatched(arr1, arr2);
}
