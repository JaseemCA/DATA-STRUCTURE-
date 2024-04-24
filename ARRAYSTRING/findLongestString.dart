findLongest(List<String> arr) {
  String largest = '';

  for (int i = 0; i < arr.length; i++) {
    if (arr[i].length >= largest.length) {
      largest = arr[i];
    }
  }
  return largest;
}

void main() {
  List<String> arr = ["jaseem", "peter", "adnu"];
  var resu = findLongest(arr);
  print(resu);
}
