void main() {
  Rectangular obj = Rectangular("red",44,55);
  obj.calculate();
}
class Shape{
  String Color;
  double length;
  double width;
  
  Shape(this.Color,this.length,this.width);

  

}
class Rectangular extends Shape{
    Rectangular(String Color,double length,double width) :super(Color,length,width);
  calculate(){
  double area = length *width;
  
  print("Color of shape is $Color");
  print("Area of Shape is $area");
  }

}