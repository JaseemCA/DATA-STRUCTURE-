import 'paranthesis.dart';

class Stack {
  List<String> arr = [];
  void push(String value) {
    arr.add(value);
  }

  bool isempty() {
    return arr.isEmpty;
  }

  String pop() {
    if (isempty()) {
      return "";
    }
    return arr.removeLast();
  }

  bool isvalidpara(String s) {
    Map<String, String> paramap = {'(': ')', '{': '}', '[': ']'};
    Stack stack = Stack();
    for (int i = 0; i < s.length; i++) {
      String char = s[i];

      if (paramap.containsValue(char)) {
        stack.push(char);
      } else if (paramap.containsKey(char)) {
        if (stack.isempty() || stack.pop() != paramap[char]) {
          return false;
        }
      }
    }
    return stack.isempty();
  }
}

void main() {
  String s = "({}{}";

  bool resu = isValidParentheses(s);
  print(resu);
}
