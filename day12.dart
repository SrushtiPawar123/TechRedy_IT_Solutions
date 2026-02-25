class University {
  String universityName;
  String location;

  University(this.universityName, this.location);

  void displayUniversityInfo() {
    print("University: $universityName");
    print("Location: $location");
  }
}

class College extends University {
  String collegeName;
  String principal;

  College(String universityName, String location, this.collegeName, this.principal)
      : super(universityName, location);

  void displayCollegeInfo() {
    super.displayUniversityInfo();
    print("College: $collegeName");
    print("Principal: $principal");
  }
}

class Department extends College {
  String departmentName;
  String headOfDepartment;

  Department(String universityName, String location, String collegeName, String principal,
      this.departmentName, this.headOfDepartment)
      : super(universityName, location, collegeName, principal);

  void displayDepartmentInfo() {
    super.displayCollegeInfo();
    print("Department: $departmentName");
    print("Head of Department: $headOfDepartment");
  }
}

void main() {
  Department dept = Department(
      "Oxford University", "London", "Engineering College", "Dr. Smith", "Computer Science", "Prof. Johnson");
  dept.displayDepartmentInfo();
}