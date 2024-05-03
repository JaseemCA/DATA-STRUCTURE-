class sample {
  Linearobject(List<person> list, person target) {
    for (int i = 0; i < list.length; i++) {
      if (list[i].age == target.age&& list[i].name==target.name) {
        return i;
      }
    }
    return -1;
  }
}

class person {
  String? name;
  String? age;

  person(this.age, this.name);
}

void main() {
  List<person> list = [
    person('jaseem', '23'),
    person('adnu', '32'),
    person('peter', '43')
  ];

  sample value = sample();
  var resu = value.Linearobject(list, person('jaseem', '23'));
  print(resu);
}
