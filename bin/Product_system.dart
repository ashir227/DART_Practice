abstract class User{
String? name ;
String? email;
User(this.name,this.email);
showprofile(); 
}

mixin Course_list{
  List <String> courses = [];
  enroll(String course){
    courses.add(course);
  }
  void listCourses() {
    print(" Enrolled Courses:");
    for (var course in courses) {
      print("- $course");
    }
}}
class Student extends User with Course_list{
  String? sec;
Student(String name,String email,this.sec):super(name,email);
@override
showprofile() {
    print("Student name is $name");
    print("Student Email is $email");
    print("Student Enrolled Courses in $courses");
    print("Student Section is $sec");
  }

}
void main() {
  Student obj = Student("Mehmood", "Mehmood 888@ gmail.com", "D");
  
  obj.enroll("Englis");
  obj.enroll("Science");
  obj.showprofile();
  obj.listCourses();
}