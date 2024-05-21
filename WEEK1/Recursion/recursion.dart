class Recursion {
  reverseString(String data) {
    if (data.length <= 1) {
      return data;
    }
    return data[data.length-1]+ reverseString(data.substring(0,data.length-1));
    
    
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

String reverseString(String str) {
  if (str.length <= 1) {
    return str;
  }

  return str[str.length - 1] + reverseString(str.substring(0, str.length - 1));
}

void main() {
  Recursion values = Recursion();

  var resu = values.multiple(5, 10);
  print(resu);

  // String original = "hello";
  // String reversed = reverseString(original);
  // print("Original string: $original");
  // print("Reversed string: $reversed");
}
