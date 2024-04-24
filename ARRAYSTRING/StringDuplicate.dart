String DeleteDuplicate(String S) {
  List<String> char = S.split('');
  late int count = 0;
  String result = '';
  for (int i = 0; i < char.length; i++) {
    bool isUniq = true;
    

    for (int j = i + 1; j < char.length; j++) {
      if (char[i] == char[j]) {
        isUniq = false;
        count = count + 1;
        break;
      }
    }

    if (isUniq) {
      result += char[i];
    }
  }
  print(count);
  return result;
}

void main() {
  String S = "jaseem ca peeter";

  var resu = DeleteDuplicate(S);
  print(resu);
}
