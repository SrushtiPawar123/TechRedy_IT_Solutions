
class Student {
  final int id;
  String name;
  String department;
  List<Course> enrolledCourses = [];

  Student(this.id, this.name, this.department);

  void enrollCourse(Course course) {
    enrolledCourses.add(course);
    print("$name enrolled in ${course.courseName}");
  }

  void showDetails() {
    print("Student ID: $id");
    print("Name: $name");
    print("Department: $department");
    print("Enrolled Courses:");
    for (var course in enrolledCourses) {
      print(" - ${course.courseName} (${course.courseCode})");
    }
  }
}

class Course {
  final String courseCode;
  String courseName;
  String faculty;

  Course(this.courseCode, this.courseName, this.faculty);

  void showCourseDetails() {
    print("Course Code: $courseCode");
    print("Course Name: $courseName");
    print("Faculty: $faculty");
  }
}

class ERPSystem {
  List<Student> students = [];
  List<Course> courses = [];

  void addStudent(Student student) {
    students.add(student);
    print("Added student: ${student.name}");
  }

  void addCourse(Course course) {
    courses.add(course);
    print("Added course: ${course.courseName}");
  }

  void showAllStudents() {
    print("\n--- Student List ---");
    for (var student in students) {
      student.showDetails();
    }
  }

  void showAllCourses() {
    print("\n--- Course List ---");
    for (var course in courses) {
      course.showCourseDetails();
    }
  }
}

void main() {
  // Create ERP System
  ERPSystem erp = ERPSystem();

  // Add Courses
  Course c1 = Course("CS101", "Data Structures", "Dr. Sharma");
  Course c2 = Course("CS102", "Operating Systems", "Prof. Mehta");
  erp.addCourse(c1);
  erp.addCourse(c2);

  // Add Students
  Student s1 = Student(1, "Srushti Pawar", "Computer Engineering");
  Student s2 = Student(2, "Rahul Patil", "Information Technology");
  erp.addStudent(s1);
  erp.addStudent(s2);

  // Enroll Students in Courses
  s1.enrollCourse(c1);
  s1.enrollCourse(c2);
  s2.enrollCourse(c2);

  // Show ERP Data
  erp.showAllStudents();
  erp.showAllCourses();
}
