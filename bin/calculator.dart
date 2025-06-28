import 'package:my_project/my_project.dart';

void main() {
  Calculator obj = Calculator(10, 8);
  obj.add();
  obj.sub();
  obj.mul();
  obj.div();
}
class Calculator{
  double num1;
  double num2;

Calculator(this.num1,this.num2);

add(){
  double n = num1+num2;
  print(n);
}
sub(){
  double n = num1-num2;
  print(n);
}
mul(){
   double n = num1*num2;
  print(n);
}
div(){
 double n = num1/num2;
  print(n);
}
}