class Employee{
  String Name;
  double Salary;
  Employee(this.Name,this.Salary);

}
class Manager extends Employee{
  double Bonus;
  Manager(String Name,double Salary,this.Bonus):super(Name,Salary);
}
class HR extends Manager{
String Dept;
HR(String Name,double Salary,double Bonus,this.Dept):super(Name,Salary,Bonus);

Pay(){
  print("Department : $Dept");
  print("Salary : $Salary");
  print("Bonus :$Bonus");
  double full_pay = Salary+Bonus;
  print("Full Payment :$full_pay");
}

}
void main(){
HR obj = HR("Huhib", 50000, 30000, "Designing");
obj.Pay();
}