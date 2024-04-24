List<dynamic> findUnmatchedElements(List<dynamic> arr1, List<dynamic> arr2) {
  Set<dynamic> set1 = Set.from(arr1);
  Set<dynamic> set2 = Set.from(arr2);

  Set<dynamic> unmatchedElements = set1.difference(set2);

  return unmatchedElements.toList();
}

void main() {
  List<dynamic> arr1 = [1, 2, 3, 4, 5];
  List<dynamic> arr2 = [3, 4, 5, 6, 7];

  List<dynamic> unmatchedElements = findUnmatchedElements(arr1, arr2);

  print("Unmatched Elements: $unmatchedElements");
}
