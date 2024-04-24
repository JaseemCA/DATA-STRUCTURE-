class Hastable {
  List<List<dynamic>>? table;

  late int size;

  Hastable(int size) : table = List.generate(size, (index) => []) {
    this.size = size;
  }

  int hasfunction(dynamic key) {
    return key.hashCode.abs() % size;
  }

  void insert(dynamic key, dynamic value) {
    int index = hasfunction(key);
    table?[index].add(value);
  }

  List<dynamic> search(dynamic key) {
    int index = hasfunction(key);
    return table![index];
  }

  void remove(dynamic key, dynamic value) {
    int index = hasfunction(key);
    table?[index].remove(value);
  }

  void display() {
    for (int i = 0; i < size; i++) {
      List<dynamic> temp = table![i];
      print(temp);
    }
  }
}

void main() {
  Hastable value = Hastable(10);

  value.insert(1, "jaseem");
  value.insert(2, "peter parker");
  value.insert(7, "pareek");
  value.insert(4, "poth");
  value.insert(5, "peer");
  value.remove(4, "poth");
  value.display();
}
