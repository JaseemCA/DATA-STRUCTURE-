

adding(List<int> arr) {
  int sum = 0;
  List<int> result = [];
  for (int i = 0; i < arr.length-1 ; i += 2) {
    if (i == (arr.length-1)-1 ) {
      sum += arr.last;
      result.add(sum);
      break;
    }
    sum = (arr[i] + arr[i + 2]);
    result.add(sum);
  }
  print(result);
}

void main() {
  List<int> arr = [4, 5, 98, -1, -2, 7, 812, 99];
  adding(arr);
}
