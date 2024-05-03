class sort {
  List<dynamic> mergesortt(List<dynamic> store) {
    if (store.length <= 1) {
      return store;
    }
    int middle = store.length ~/ 2;
    List<dynamic> firsthalf = store.sublist(0, middle);
    List<dynamic> lasthalf = store.sublist(middle);
    return joinfun(mergesortt(firsthalf), mergesortt(lasthalf));
  }

  List<dynamic> joinfun(List<dynamic> firsthalf, List<dynamic> lasthalf) {
    List<dynamic> valuestoring = List<dynamic>.from(firsthalf + lasthalf);
    int j = 0;
    int i = 0;
    int k = 0;

    while (i < firsthalf.length && j < lasthalf.length) {
      if (firsthalf[i].compareTo(lasthalf[j])>0) {
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

  List<dynamic> store = ['jaseem','peter','adnan','jasir'];
  List<dynamic> resu=values.mergesortt(store);
  print(resu);
}
