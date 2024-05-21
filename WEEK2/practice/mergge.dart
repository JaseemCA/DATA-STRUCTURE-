class sort {
  List<int> mergesort(List<int> store) {
    if (store.length <= 1) {
      return store;
    }

    int middle = store.length ~/ 2;
    List<int> firsthalf = store.sublist(0, middle);
    List<int> lasthalf = store.sublist(middle);

    return joinFunction(mergesort(firsthalf), mergesort(lasthalf));
  }

  List<int> joinFunction(List<int> firsthalf, List<int> lasthalf) {
    List<int> valuestoring = List<int>.from(firsthalf + lasthalf);

    int i = 0;
    int j = 0;
    int k = 0;

    while (i < firsthalf.length && j < lasthalf.length) {
      if (firsthalf[i] > lasthalf[j]) {
        valuestoring[k++] = firsthalf[i++];
      } else {
        valuestoring[k++] = lasthalf[j++];
      }
    }
    while (i < firsthalf.length) {
      valuestoring[k++] = firsthalf[i++];
    }
    while (j < lasthalf.length) {
      valuestoring[k++] = lasthalf[j++];
    }
    return valuestoring;
  }
}

void main() {
  sort values = sort();

  List<int> store = [234, 23, 1, 1, 13, 22, 53, 4, 900, 8, 000, 0, 0, 54];

  var redu = values.mergesort(store);
  print(redu);
}
