peekarrya() {
  List<int> arr = [12, 56, 777, 8, 89, 20, 7];

  int peek = arr[0];

  if (arr.length == 1) {
    peek = arr[0];
    return;
  }

  for (int i = 0; i < arr.length; i++) {
    if (i == 0) {
      if (arr[i + 1] > arr[i]) {
        peek = arr[i + 1];
      } else if (i == arr.length - 1) {
        if (arr[i - 1] < arr[i]) {
          peek = arr[i];
        } else {
          if (arr[i - 1] < arr[i] && arr[i + 1] < arr[i]) {
            peek = arr[i];
          }
        }
      }
    }
  }
  print(peek);
}

void main() {
  peekarrya();
}
