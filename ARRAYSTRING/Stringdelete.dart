deleteDupil(String s) {
  List<String> char = s.split('');

  String result = '';

  for (int i = 0; i < char.length; i++) {
    bool value = true;

    for (int j = i + 1; j < char.length; j++) {
      if (char[i] == char[j]) {
        value = false;
        break;
      }
    }
    if (value) {
      result = result + char[i];
    }
  }

  print(result);
}

void main() {
  deleteDupil('jaseem ca');
  
}
