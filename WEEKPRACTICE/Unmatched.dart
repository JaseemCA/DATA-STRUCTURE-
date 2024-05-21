Unmatched(List<int> arr1, List<int> arr2) {
  List<int> unmatched = [];

  Set<int> set1 = arr1.toSet();
  Set<int> set2 = arr2.toSet();

  unmatched.addAll(set1.difference(set2));
  print(unmatched);
}

void main() {
  List<int> arr1 = [23, 235, 34, 45, 67, 5634, 233, 32, 23, 34];
  List<int> arr2 = [3455, 234, 43123, 245, 346, 356, 4562, 12, 45, 67, 3455];

  Unmatched(arr1, arr2);
}
