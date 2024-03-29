

class Recursion {
  reverseString(String data) {
    if (data.length <= 1) {
      return data;
    }
    String a = reverseString(data.substring(1)) + data[0];
    print(a);
    return a;
  }

  factorial(int n) {
    if (n == 0 || n == 1) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }

 multiple(int num, int times) {
    if (times == 1) {
      return num;
    } else {
      return num + multiple(num, times - 1);
    }
  }
}

void main() {
  Recursion values = Recursion();

  // var resu = values.factorial(0);
  // print(resu);
  values.multiple(8,8);
}
