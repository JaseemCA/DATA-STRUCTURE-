List<dynamic> unmatche(List<dynamic> arr1, List<dynamic> arr2) {
  Set<dynamic> set1 = Set.from(arr1);
  Set<dynamic> set2 = Set.from(arr2);

  Set<dynamic> unmatche = set1.difference(set2);

  return unmatche.toList();
}

void main() {
  List<dynamic> arr1 = [1, 2, 3, 4, 53, 2, 7];
  List<dynamic> arr2 = [2, 3, 4, 5, 89, 3, 2];
  List<dynamic> result = unmatche(arr1, arr2);
  print(result);
}
