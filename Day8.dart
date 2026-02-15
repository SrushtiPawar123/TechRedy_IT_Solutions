
class Student {
  String name;
  int rollNumber;
  double marks;

  Student(this.name, this.rollNumber, this.marks);

  void displayInfo() {
    print('Name: $name');
    print('Roll Number: $rollNumber');
    print('Marks: $marks');
  }

  void checkResult() {
    if (marks >= 40) {
      print('$name has passed.');
    } else {
      print('$name has failed.');
    }
  }
}

void main() {
  Student student1 = Student('Aarav', 101, 85.5);
  Student student2 = Student('Meera', 102, 35.0);

  print('--- Student 1 Details ---');
  student1.displayInfo();
  student1.checkResult();

  print('\n--- Student 2 Details ---');
  student2.displayInfo();
  student2.checkResult();
}