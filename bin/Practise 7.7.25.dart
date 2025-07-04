class Vehicle{
  String? brand;
  int? model;
  Vehicle(this.brand,this.model);
  showinfo(){
print("Car Model : $model");
print("Car brand : $brand");
  }
  
}
class ElectricCar  extends Vehicle{
int? battery;
ElectricCar(String brand,int model,this.battery):super(brand,model);
@override
showinfo(){
print("Car battery Power : $battery MaH");
super.showinfo();
}
}
void main(){
  ElectricCar obj = ElectricCar("TOYOTA", 2019, 20000);
  obj.showinfo();
}