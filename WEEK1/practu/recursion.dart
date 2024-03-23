class recursion {
  bool palindrome(String str1) {
    if (str1.length <= 1) {
      return true;
    } else if (str1[0] != str1[str1.length - 1]) {
      return false;
    }
    return palindrome(str1.substring(1, str1.length - 1));
  }

  factorial(int num) {
    if (num == 0 || num == 1) {
      return 1;
    } else {
      return num * factorial(num - 1);
    }
  }

  multiple(int num, int times) {
    if (times == 1) {
      return num;
    } else {
      return num + multiple(num, times - 1);
    }
  }

  reverseStrin(String data) {
    if (data.length <= 1) {
      return data;
    }
    String resu = reverseStrin(data.substring(1)) + data[0];
    
    return resu;
  }
}

void main() {
  recursion values = recursion();

  var resu = values.palindrome("jaseem");
  print(resu);

  var out = values.factorial(5);
  print(out);

  var mul = values.multiple(5, 3);
  print(mul);

 print(values.reverseStrin("adnan"));
}
