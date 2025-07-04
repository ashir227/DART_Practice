abstract class Employee {
  late String name;
  late double salary;

  Employee(this.name, this.salary);

  displayinfo() {}
}

class Manager extends Employee {
 late double bonus;

  Manager(String name, double salary, this.bonus) : super(name, salary);
  @override
  displayinfo() {
    double totalpay = salary +bonus ;
  
    print("Role: Manager");
    print("Name: $name");
    print("Base Salary: $salary");
    print("Bonus: $bonus");
    print("Total Pay: $totalpay");
  }
}
class HR extends Employee{
  
  String? dept;
  HR(String name, double salary, this.dept) : super(name, salary);
  @override
  displayinfo() {
   
     print("Role: HR");
    print("Name: $name");
    print("Salary: $salary");
    print("Department: $dept");

    
  }
}
void main() {
  Manager mgr = Manager("Ashir", 60000,15000);
  mgr.displayinfo();

  print("----------------");

  HR hr = HR("Ahmed", 45000, "Recruitment");
  hr.displayinfo();
}