class Person{
  String name;
  int age;
  Person(this.name,this.age);
  role(){
    print("Name is $name");
    print("Age is $age");
    
  }
}
class Student extends Person{
  Student(String name,int age,this.Sec,this.Marks ):super(name,age);
  String Sec;
  int Marks;
  @override
  role(){
    print("Name is $name");
    print("Age is $age");
    print("Section is $Sec");
    print("Thay are Learning");
  }
 
 
}
class Teacher extends Student{
  String Sub;
  Teacher(String name,int age,String Sec, int Marks,this.Sub):super(name,age,Sec,Marks);
   @override
  role(){
    print("-------------");
    print("Name is $name");
    print("Age is $age");
    print("Thay are Teaching");
    super.role();

  }

}
void main() {
   Student obj = Student("Anas", 23, "B", 88);
   obj.role();
   Teacher obj1 = Teacher("Ashu", 21, "C", 77, "Eng");
   obj1.name;
   obj1.age;
   obj1.role();
}