class linearsearch {
  objectSearch(List<person> list, person target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i].name == target.name && list[i].age == target.age) {
        return i;
      }
    }
    return -1;
  }
}

class person {
  String name;
  int age;

  person(this.name, this.age);
}

void main() {
  linearsearch values = linearsearch();

  List<person> people = [
    person("jaseem", 22),
    person("peter", 55),
    person("adnu", 5)
  ];

  var resu = values.objectSearch(people, person("jaseem", 22));
  print(resu);
}
