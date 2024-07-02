class Student{
  late int roll;
  late String name;
  late double marks;
  void input(roll,name,marks)
  {
      this.roll =roll;
      this.name =name;
      this.marks =marks;
  }
  void show()
  {
    print(roll);
    print(name);
    print(marks);
  }
}

void main()
{
  Student obj = new Student();
  // obj.name = "Sahil"..roll=23;
  // obj.input(20,"Ravi",89.0);
}