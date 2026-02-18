class Student {
  String name;
  int marks;

  Student(this.name, this.marks);

  void setData(String name, int marks) {
    this.name = name;  
    this.marks = marks;
  }

  void display() {
    print("Name: $name");
    print("Marks: $marks");
  }
}

void main() {
  Student s1 = Student("Alice", 85);
  s1.display();

  s1.setData("Bob", 92);

  s1.display();
}