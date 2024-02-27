class Sample {
  List<int> twonumbers(List<int> store, int target) {
    List<int> newval = [];
    for (int i = 0; i < store.length - 1; i++) {
      for (int j = i + 1; j < store.length; j++) {
        if (store[i] + store[j] == target) {
          newval.add(store[i]);
          newval.add(store[j]);
          return newval;
        }
      }
    }
    return newval;
  }
}

void main() {
  List<int> store = [
    6,
    5,
    7,
    9,
    4,
    0,
    2,
  ];
  int target = 10;
  Sample sample = Sample();
  List<int> result = sample.twonumbers(store, target);
  print(result);
}
