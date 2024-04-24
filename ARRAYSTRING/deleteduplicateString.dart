String DeleteDupicate(String s) {
  List<String> char = s.split('');
  String result = '';
  for (int i = 0; i < char.length; i++) {
    bool isUnique = true;
    for (int j = i + 1; j < char.length; j++) {
      if (char[i] == char[j]) {
        isUnique = false;
        break;
      }
    }
    if (isUnique) {
      result += char[i];
    }
  }

  return result;
}

void main() {
  String s = 'jaseem peter';
  var resu = DeleteDupicate(s);
  print(resu);
}
