findLongest(List<String> arr) {
  String largest = '';

  for (int i = 0; i < arr.length; i++) {
    if (arr[i].length >= largest.length) {
      largest = arr[i];
    }
  }
  print("largest is ${largest}");
}


void main() {

  List<String> arr = ['adnn', 'jaseem', 'jasir'];
  findLongest(arr);

 }




