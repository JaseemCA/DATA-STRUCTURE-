class sort {
  List<dynamic> mergesort(List<dynamic> store) {
    if (store.length <= 1) {
      return store;
    }

    int middle = store.length ~/ 2;
    List<dynamic> firsthalf = store.sublist(0, middle);
    List<dynamic> lasthalf = store.sublist(middle);
    return joinfun(mergesort(firsthalf), mergesort(lasthalf));
  }

  List<dynamic> joinfun(List<dynamic> firsthalf, List<dynamic> lasthalf) {
    List<dynamic> valuestoring = List<dynamic>.from(firsthalf + lasthalf);
    int j = 0;
    int i = 0;
    int k = 0;

    while (i.compareTo(firsthalf.length)<0 && j.compareTo(lasthalf.length)<0) {
      if (firsthalf[i].compareTo(lasthalf[j])<0) {
        valuestoring[k++] = firsthalf[i++];
      } else {
        valuestoring[k++] = lasthalf[j++];
      }
    }
    while (i.compareTo(firsthalf.length)<0) {
      valuestoring[k++] = firsthalf[i++];
    }
    while (j.compareTo(lasthalf.length)<0) {
      valuestoring[k++] = lasthalf[j++];
    }
    return valuestoring;
  }
}

void main() {
  sort value = sort();

  List<dynamic> store = ["jaseem", "adnan", "pottan", "jithu", "minna"];

  List<dynamic> resu = value.mergesort(store);
  print(resu); 
}
