
class Student {
  String name;
  int rollNumber;
  double marks;

  Student(this.name, this.rollNumber, this.marks);

  // Method to calculate grade
  String calculateGrade() {
    if (marks >= 90) {
      return "A";
    } else if (marks >= 75) {
      return "B";
    } else if (marks >= 50) {
      return "C";
    } else {
      return "F";
    }
  }

  void displayInfo() {
    print("Name: $name");
    print("Roll Number: $rollNumber");
    print("Marks: $marks");
    print("Grade: ${calculateGrade()}");
    print("-------------------------");
  }
}

void main() {
  List<Student> students = [
    Student("Srushti", 101, 92),
    Student("Amit", 102, 76),
    Student("Neha", 103, 48),
    Student("Ravi", 104, 67),
  ];

  // Displaying student details
  for (var student in students) {
    student.displayInfo();
  }
}