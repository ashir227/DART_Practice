import 'dart:ffi';

abstract class User {
  String? namee;
  String? position;
  User(this.namee,this.position);
userinfo();
}

class Student extends User with subject,Std_role{
  Student(String namee,String position):super(namee,position);
  @override
  userinfo() {
    print("Std name is :$namee");
    print("Std position is :$position");
    
  }
}
class instructor extends User with teacher_role{
instructor(String namee,String position):super(namee,position);
@override
userinfo() {
    print("Teacher name is : $namee");
    print("Teacher position is $position");
  }
}
mixin subject{
  
void sub(){
print("1.English");
print("2.Urdu");
print("3.Math");
}

}
mixin Std_role{
String? Sec;
   rol(){
print("lEARNING");
print("Sec $Sec");
  }
}
mixin teacher_role{
  String? subj;
  int? salary;
r(){
  print("Teacher Teach Students");
  print("teacher Expert in: $subj");
  print("Teacher salary is :$salary");
}
}
void main() {
  Student obj   = Student("Ashir", "A");
  obj.userinfo();
  obj.Sec = "O";
  obj.sub();
  obj.rol();

  print("=====================");

  instructor obj1 = instructor(" Miss AAFIA", "Senior Teacher");
  obj1.salary = 1000;
  obj1.subj = "Maths";
  obj1.userinfo();
  obj1.r();


}