class Student {
  static int totalStudents = 0;  // shared by all students

  String name;

  // Constructor
  Student(this.name) {
    totalStudents++;  // every time a student is made, count increases
  }

  void showName() {
    print("Student name: $name");
  }
}

void main() {
  Student s1 = Student("Ali");
  Student s2 = Student("Sara");
  Student s3 = Student("Ahmed");

  print("Total students created: ${Student.totalStudents}");
}
