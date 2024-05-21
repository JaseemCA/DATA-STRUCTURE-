fibinoci(int num) {
  int first = 0;
  int second = 1;
  for (int i = 0; i < num; i++) {
    print(first);

    int third = first + second;

    first = second;
    second = third;
  }
}

void main() {
  fibinoci(10);
}
