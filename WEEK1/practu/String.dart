class strings {
  concatunation(String str1, String str2) {
    String result = str1 + str2;

    print(result);
  }

  reversestr(String str1) {
    if (str1.isEmpty) {
      return str1;
    }
    return reversestr(str1.substring(1)) + str1[0];
  }

  replacestr(String str1) {
    var resu = str1.replaceAll("peter", "ca");
    print(resu);
  }

  trimstr(String str1) {
    var resu = str1.trim();
    print(resu);
  }
  
  


}

void main() {
  strings values = strings();

  values.concatunation('jaseem', "peter");
  String resu = values.reversestr('adnan');
  print(resu);
  values.replacestr("jaseem peter");
  values.trimstr("       peter parker   ");

}
