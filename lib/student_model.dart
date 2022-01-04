class Student {
  String name;
  String address;

  Student(this.name, this.address);
  Student.fromMap(Map map) {
    this.name = map['name'];
  }
}
