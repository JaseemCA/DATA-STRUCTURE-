oddandeven() {
  List<int> arr = [2, 3, 5, 1, 6, 7, 9, 5, 6, 0];

  List<int> odd = [];
  List<int> even = [];

  for (int i = 0; i < arr.length; i++) {
    if (arr[i].isEven) {
      even.add(arr[i]);
    } else if(arr[i].isOdd){
      odd.add(arr[i]);
    }
  }

  print(even);
  print(odd);
}

void main() {
  oddandeven();
}
