class Student {
  String name;
  String? email; // nullable type using ?

  Student(this.name, this.email);
}

void main() {
  Student s1 = Student("Srushti", null);

  // Safe access using null-aware operator
  print("Student email length: ${s1.email?.length ?? 0}");

  // Example with non-null email
  Student s2 = Student("Riya", "riya@example.com");
  print("Student email length: ${s2.email?.length ?? 0}");
}
