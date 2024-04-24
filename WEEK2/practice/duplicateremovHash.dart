String removeDupilcate(String input) {
  Map<String, int> freqmap = {};
  String result = "";
  for (int i = 0; i < input.length; i++) {
    String char = input[i];
    freqmap[char] = (freqmap[char] ?? 0) + 1;
  }
  for (int i = 0; i < input.length; i++) {
    String char = input[i];

    if (freqmap[char] == 1) {
      result += char;
    }
  }
  return result;
}

void main() {
  String input = "peeter paerker";
  String resu = removeDupilcate(input);
  print(resu);
}
