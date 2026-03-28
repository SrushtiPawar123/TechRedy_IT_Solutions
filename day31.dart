
class Employee {
  void work() {
    print("Employee is working.");
  }
}

class Developer extends Employee {
  @override
  void work() {
    print("Developer is writing code.");
  }
}

class Designer extends Employee {
  @override
  void work() {
    print("Designer is creating designs.");
  }
}

void main() {
  Employee emp = Employee();
  Developer dev = Developer();
  Designer des = Designer();

  emp.work();   // Calls Employee's work()
  dev.work();   // Calls Developer's overridden work()
  des.work();   // Calls Designer's overridden work()
}