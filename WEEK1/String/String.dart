class Strings {
  concatunation(String str1, String str2) {
    String result = str1 + str2;
    print(result);
  }

  replace(String str1) {
    String result = str1.replaceAll("peter", "CA");
    print(result);
  }

  substringfun(String text) {
    String result = text.substring(8, 15);
    print(result);
  }

  trimfun(String text) {
    String result = text.trim();
    print(result);
  }

  upperandlower(String str1, String str2) {
    String upper = str1.toUpperCase();
    String lower = str2.toLowerCase();
    print(upper);
    print(lower);
  }

  containcheck(String str) {
    bool result = str.contains('pet');
    print(result);
  }
}

void main() {
  Strings values = Strings();
  // values.concatunation("peter", "parker");
  // values.replace("hello I am jaseem peter");
  values.substringfun("this is jaseeem ");
  
  // values.trimfun('adna is a good BOY       ');
  // values.upperandlower('veeran ', 'PETER');
  // values.containcheck('peter');
}
