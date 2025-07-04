import 'dart:ffi';
import 'dart:io';

abstract class shape{
calculate_area();
}
class circle  extends shape{
    late double radius;
    late double diamenter;
    circle(this.radius,this.diamenter);
@override
calculate_area() {
    radius = diamenter/2;
    print(radius);
  }

}
class Rectangle extends shape{
// late double area;
late double length;
late double width;
Rectangle(this.length,this.width);
@override
void calculate_area(){
    areas  = length *width;
    print("Area is $areas");
}
}
void main() {
circle obj = circle(33, 7);
obj.calculate_area();

Rectangle obj1 = Rectangle(2, 3, 66);

}