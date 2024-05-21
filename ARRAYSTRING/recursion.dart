Strinreverse(String str) {
  if (str.length <= 1) {
    return str;
  }

  return str[str.length - 1] + Strinreverse(str.substring(0, str.length - 1));
}

multiplication(int num, int times) {
  if (times == 1) {
    return num;
  }

  return num * multiplication(num,times - 1);
}

void main() {
  String result = Strinreverse("jaseem peter");
  print(result);
}
