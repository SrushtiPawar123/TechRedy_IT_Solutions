// Demonstrating Null Safety in Dart with a Student class

class Student {
  String name;        // Non-nullable: must always have a value
  int? age;           // Nullable: can be null
  String? email;      // Nullable: optional field

  Student(this.name, this.age, this.email);

  void displayInfo() {
    // Null-aware operator ?? provides fallback values
    print("Name: $name");
    print("Age: ${age ?? 'Not Provided'}");
    print("Email: ${email ?? 'Not Provided'}");
  }
}

void main() {
  // Example 1: Non-nullable variable must be initialized
  String course = "Computer Science";
  print("Course: $course");

  // Example 2: Nullable variable can hold null
  int? marks;
  print("Marks: ${marks ?? 0}"); // Default to 0 if null

  // Example 3: Creating Student objects
  Student s1 = Student("Srushti", null, null); // age & email not provided
  s1.displayInfo();

  print("-----");

  Student s2 = Student("Alex", 21, "alex@example.com");
  s2.displayInfo();

  print("-----");

  // Example 4: Null assertion operator (!)
  String? nickname = "Coder";
  print("Nickname length: ${nickname!.length}");
}
