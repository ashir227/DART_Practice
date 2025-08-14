import 'dart:io';

abstract class Employee {
  String name;
  late double salary;
  Employee(this.name, this.salary);

  displayinfo() {
    print("Employe name is $name");
    print("Employee Salary is $salary");
  }
}

class Manager extends Employee {
  late double bonus;
  Manager(String name, double salary, this.bonus) : super(name, salary);
  @override
  displayinfo() {
    double Full_salary = salary + bonus;
    {
      print("Employee Bunus is $bonus");
      print("Employe Full pay is $Full_salary");
      super.displayinfo();
    }
  }
}

class Worker extends Manager {
  // double? advance;
  Worker(String name, double salary, double bonus) : super(name, salary, bonus);
  @override
  displayinfo() {
    double advance = bonus;
    double Full_paying = advance + salary;
    print("Employee Advance is $advance");
    print("Full salary is $Full_paying");
    super.displayinfo();
  }
}

void main() {
  stdout.write("Enter name");
  String? name = stdin.readLineSync();
  stdout.write("Enter Salary");
  double salary = double.parse(stdin.readLineSync()!);
  stdout.write("Enter Salary");
  double bonus = double.parse(stdin.readLineSync()!);

  Manager obj = Manager(name!, salary, bonus);
  obj.displayinfo();
  print("+++++++++++++++++++++++++");
  Worker obj1 = Worker(name, salary, bonus);
  obj1.displayinfo();
}
