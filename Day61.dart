// Dart program demonstrating Maps

void main() {
  // Creating a Map with key-value pairs
  Map<String, String> student = {
    'name': 'Srushti',
    'course': 'Computer Engineering',
    'year': '2nd Year',
  };

  // Printing the whole map
  print("Student Map: $student");

  // Accessing values using keys
  print("Name: ${student['name']}");
  print("Course: ${student['course']}");
  print("Year: ${student['year']}");

  // Adding a new key-value pair
  student['college'] = 'ABC Institute';
  print("After adding college: $student");

  // Updating an existing value
  student['year'] = 'Final Year';
  print("After updating year: $student");

  // Iterating through the map
  print("Iterating through Map:");
  student.forEach((key, value) {
    print("$key: $value");
  });
}
