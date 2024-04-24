Duplicate(List<int> arr) {
  var flag = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == arr[i + 1]) {
      flag = 1;

      break;
    }
  }
  if (flag == 1) {
    print("repeating");
  } else {
    print("not");
  }
}





void main() {
  List<int> arr = [1, 2, 2, 3, 3, 4, 57, 77, 77];
  Duplicate(arr);
}
