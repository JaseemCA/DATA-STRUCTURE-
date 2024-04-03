class sort {
  List<int> mergesortt(List<int> store) {
    if (store.length <= 1) {
      return store;
    }
    int middle = store.length ~/ 2;
    List<int> firsthalf = store.sublist(0, middle);
    List<int> lasthalf = store.sublist(middle);
    return joinfun(mergesortt(firsthalf), mergesortt(lasthalf));
  }

  List<int> joinfun(List<int> firsthalf, List<int> lasthalf) {
    List<int> valuestoring = List<int>.from(firsthalf + lasthalf);
    int j = 0;
    int i = 0;
    int k = 0;

    while (i < firsthalf.length && j < lasthalf.length) {
      if (firsthalf[i] < lasthalf[j]) {
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

  List<int> store = [223, 434, 2344456, 47, 67, 4, 34, 3433, 22, 1, 1, 1, 3];
  List<int> resu=values.mergesortt(store);
  print(resu);
}
