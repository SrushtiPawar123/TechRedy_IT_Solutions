
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

mixin Worker {
  String jobTitle = "";

  void work() {
    print("Working as: $jobTitle");
  }
}

mixin Learner {
  String skill = "";

  void learn() {
    print("Learning: $skill");
  }
}

class Employee extends Person with Worker, Learner {
  Employee(String name, int age, String jobTitle, String skill) : super(name, age) {
    this.jobTitle = jobTitle;
    this.skill = skill;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    work();
    learn();
  }
}

void main() {
  Employee emp = Employee("Srushti", 22, "Software Developer", "Dart Programming");
  print("---- Employee Info ----");
  emp.displayInfo();
}