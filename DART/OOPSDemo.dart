class Student {
  // instance variables
  // private variables can be defined by using underscore
  int? _id;
  String? _name;
  double? _marks;
  get id => this._id;
  set id(value) => this._id = value;
  get name => this._name;
  set name(value) => this._name = value;
  get marks => this._marks;
  set marks(value) => this._marks = value;
// unnamed constructor
  Student() {
    print("Default Called");
  }
  // named constructor
  // local variables
  Student.getDetails(int id, String name, double marks) {
    this._id = id;
    this._name = name;
    this._marks = marks;
  }
  // anonations
  @override
  String toString() {
    return "id = $_id , name = $_name , marks = $_marks";
  }
}
void main() {
  var obj = Student.getDetails(101, "Rahul", 99);
  obj.id = 110;
  print(obj);
}
