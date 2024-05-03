// removeDuplicate(List<int> arr) {
//   List<int> resul = [];

//   Set<int> arrset = arr.toSet();

//   for (var nums in arrset) {
//     resul.add(nums);
//   }
//   return resul;
// }

// void main() {
//   List<int> arr = [1, 2, 3, 1, 1, 5, 6, 78, 0, 0, 0];

//   var resu = removeDuplicate(arr);

//   print(resu);

// }

RemoveDuplcate(List<int> arr) {
  List<int> result = [];

  for (int i = 0; i < arr.length; i++) {
    bool value = true;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[i] == arr[j]) {
        value = false;
        break;
      }
    }

    if (value) {
      result.add(arr[i]);
    }
  }

  return result;
}

void main() {
  List<int> arr = [1, 2, 3, 5, 66, 66, 5, 000, 0, 0, 0, 1, 3];

  var resu = RemoveDuplcate(arr);
  print(resu);
}


