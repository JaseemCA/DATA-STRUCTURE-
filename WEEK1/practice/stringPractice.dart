class string {
  concatunation(String str1, String str2) {
    String result = str1 + str2;
    print(result);
  }

  replace(String str1) {
    var result = str1.replaceAll('pottan', 'P');
    print(result);
  }

  substring(String str1) {
    var result = str1.substring(12, 17);

    print(result);
  }

  trim(String str1) {
    var resu = str1.trim();
    print(resu);
  }

  upperLower(String str1, String str2) {
    var upper = str1.toUpperCase();
    var lower = str2.toLowerCase();
    print(upper);
    print(lower);
  }

  contain(String str1) {
    bool result = str1.contains("fozut");
    print(result);
  }
}

void main() {
  string value = string();

  value.concatunation('jaseem ', 'peter');
  value.replace("fouzaan pottan");
  value.substring('fouzaan is a good boy');
  value.trim('      f o z aa n  ');
  value.upperLower('fozan', 'PETER');
  value.contain('fouzan fozu');
}
