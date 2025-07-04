import 'dart:io';

class news {
  late double length;
  late double width;
nn(){
  return length * width;
}
}
void main(){
  print("Put Area Length");
double length = double.parse(stdin.readLineSync()!);
  print("Put Area Width");
  double width = double.parse(stdin.readLineSync()!);

  news obj = news();
  obj.length;

  news obj1 = news();
  obj1.width;


  double Result = obj.nn();
  print("Area is $Result");
  
  
}