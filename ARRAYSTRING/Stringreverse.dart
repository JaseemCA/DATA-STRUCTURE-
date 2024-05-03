StringReverse() {
  String str = 'jaseem ca';

  String reversed = str.split('').reversed.join();

  print(reversed);
}

StringListReverse() {
  List<String> char = ['jaseem', 'adnan', 'peter', 'muhammed'];
  int i = 0;
  int j = char.length - 1;

  while (i < j) {
    String temp = char[i];
    char[i] = char[j];
    char[j] = temp;
    i++;
    j--;
  }

  print(char);
}

void main() {
  StringReverse();
  StringListReverse();
}
