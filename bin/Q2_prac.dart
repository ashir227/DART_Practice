void main(){
  Student obj = Student("Ali", 55);
  obj.checkpass();

  print("------------");
  Student obj1 = Student("Sara", 30);
  obj1.checkpass();
}
class Student{
 String name;
int marks;
Student(this.name,this.marks);

void checkpass(){
if (marks >50) {
  print("$name is pass");
  
}
else{
  print("$name is Fail");
}

}
}