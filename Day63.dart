
// Base class
abstract class Person {
  String name;

  Person(this.name);

  // Abstract method to be overridden
  void getRole();
}

// Derived class: Student
class Student extends Person {
  String course;

  Student(String name, this.course) : super(name);

  @override
  void getRole() {
    print("$name is a Student enrolled in $course.");
  }
}

// Derived class: Professor
class Professor extends Person {
  String subject;

  Professor(String name, this.subject) : super(name);

  @override
  void getRole() {
    print("$name is a Professor teaching $subject.");
  }
}

// Derived class: Staff
class Staff extends Person {
  String department;

  Staff(String name, this.department) : super(name);

  @override
  void getRole() {
    print("$name is a Staff member working in $department department.");
  }
}

// Main function
void main() {
  // Polymorphic behavior: same interface, different implementations
  List<Person> people = [
    Student("Srushti", "Computer Engineering"),
    Professor("Dr. Patil", "Cyber Security"),
    Staff("Anita", "Administration"),
  ];

  for (var person in people) {
    person.getRole(); // Calls the overridden method dynamically
  }
}
