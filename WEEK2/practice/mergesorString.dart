class sort {
  List<String> mergesort(List<String> store) {
    if (store.length <= 1) {
      return store;
    }

    int middle = store.length ~/ 2;
    List<String> firsthalf = store.sublist(0, middle);
    List<String> lasthalf = store.sublist(middle);
    return joinfun(mergesort(firsthalf), mergesort(lasthalf));
  }

  List<String> joinfun(List<String> firsthalf, List<String> lasthalf) {
    List<String> valuestoring = List<String>.from(firsthalf + lasthalf);

    int i = 0;
    int j = 0;
    int k = 0;
    while (i < firsthalf.length && j < lasthalf.length) {
      if (firsthalf[i].compareTo(lasthalf[j]) < 0) {
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
  List<String> store = ['jaseem', 'adnan', 'muhammad', 'alan', 'zainab'];

  List<String> reult = values.mergesort(store);
  print(reult);
}
