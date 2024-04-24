class sort {
  List<int> mergesort(List<int> store) {
    if (store.length <= 1) {
      return store;
    }
    int middle = store.length ~/ 2;
    List<int> fisrthalf = store.sublist(0, middle);
    List<int> lasthalf = store.sublist(middle);
    return joinfun(mergesort(fisrthalf), mergesort(lasthalf));
  }

  List<int> joinfun(List<int> firsthalf, List<int> lasthalf) {
    List<int> valuestoring = List<int>.from(firsthalf + lasthalf);
    int i = 0;
    int j = 0;
    int k = 0;
    while (i < firsthalf.length && j < lasthalf.length) {
      if (firsthalf[i] < lasthalf[j]) {
        valuestoring[k++] = firsthalf[i++];
      } else {
        valuestoring[k++] = lasthalf[i++];
      }
    }

    while (i < firsthalf.length) {
      valuestoring[k++] = firsthalf[i++];
    }
    while (j < lasthalf.length) {
      valuestoring[k++] = lasthalf[j ++];
    }
    return valuestoring;
  }
}

void main() {
  sort values = sort();

  List<int> store = [232, 3, 345, 345, 346, 346, 356, 456, 42];

  List<int> resu = values.mergesort(store);
  print(resu);
}
