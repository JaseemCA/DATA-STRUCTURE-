class node {
  dynamic key;
  dynamic data;
  node? next;
  node(this.data, this.key);
}

class Hastable {
  List<node?>? table;
  int? size;

  Hastable(this.size) {
    table = List.generate(size!, (index) => null);
  }

  int hashfunction(dynamic key) {
    return key.hashCode.abs() % size!;
  }

  displayall() {
    for (int i = 0; i < size!; i++) {
      node? temp = table![i];
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void insert(dynamic key, dynamic data) {
    int index = hashfunction(key);
    node? newnode = node(data, key);
    if (table?[index] == null) {
      table?[index] = newnode;
    } else {
      newnode.next = table?[index];
    }
  }

  void remove(dynamic key) {
    int index = hashfunction(key);
    if (table?[index] != null) {
      node? temp = table?[index];
      node? prev;
      while (temp != null) {
        if (temp.key == key) {
          if (prev == null) {
            table?[index] = temp.next;
          } else {
            prev.next = temp.next;
          }
          return;
        }
        prev = temp;
        temp = temp.next;
      }
    }
  }

  void search(int key) {
    int index = hashfunction(key);
    if (table![index] == null) {
      print("empty");
    } else {
      print(table?[index]!.data);
    }
  }
}

void main() {
  Hastable value = Hastable(10);

  value.insert(1, "jaseem");
  value.insert(2, "jaseem ca");
  value.insert(3, "jaseem peter");
  value.insert(4, "jaseem parker");

  value.displayall();

  value.search(1);
}
