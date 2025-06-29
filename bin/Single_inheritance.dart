void main(){
Students obj = Students("Ashir","D",99);
obj.data();
}
class Person {
  late String Name;
  int? age;
  String? Sec;
  Person(this.Name,this.Sec,this.age);
  void data(){
    print("Name is : $Name");
    print("Age is:$age");
    print("Sec is:$Sec");
  }
}
class Students extends Person {
Students(String Name,String Sec,int age) : super(Name,Sec,age);
}