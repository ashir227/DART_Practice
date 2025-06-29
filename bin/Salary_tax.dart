void main() {
  Employee obj = Employee("Ramesh",700000 );
  obj.calculate();

  print("------------------------------------------");
  
  Employee obj1 = Employee("Preeti",1200000 );
  obj1.calculate();

   print("------------------------------------------");
  
  Employee obj2 = Employee("Jay",50000 );
  obj2.calculate();

}

class Employee{
  late String name;
  late double Salary;
Employee(this.name,this.Salary);
  calculate(){


    if (Salary>1000000) {
      double tax = Salary*0.10;
      print("$name");
      print("Tax Amount :$tax");
      print("Net Salary :${Salary-tax}");
    }
    else if(Salary>500000){
      print("$name");
      double tax = Salary*0.05;
      print("Tax Amount :$tax");
      print("Net Salary :${Salary-tax}");
    }
    else{
      print("$name");
      print("No tax");
      print("Salary Without tax:$Salary");
    }
  }
}