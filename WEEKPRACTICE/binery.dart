class Sample {
  binery(List<String> arr, String target) {
    int start = 0;
    int end = arr.length - 1;
    arr.sort();

    while (start <= end) {
      int middle = start + (end - start) ~/ 2;

      if (arr[middle].compareTo(target)==0) {
        return middle;
      } else if (arr[middle].compareTo( target)>0) {
        end = middle - 1;
      } else if (arr[middle].compareTo(target)<0) {
        start = middle + 1;
      }
    }
    print("not found");
  }
}

void main() {
  List<String> arr = ['jaseem ','adnan', 'peter', 'sajal'];

  Sample value = Sample();

  var resu = value.binery(arr, 'peter');
  print(resu);
}
