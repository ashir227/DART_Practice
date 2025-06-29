void main() {
  ElectricCar obj = ElectricCar("Kawasaki", 2022, 5000);
  obj.displayInfo();
}
class vehicle {
String Brand;
vehicle(this.Brand);
}
class Car extends vehicle {
  late int  model;
  Car(String Brand,this.model) :super(Brand);

  // Car(this.model);
}

class ElectricCar extends Car {
  late int BatteryCapacity;
ElectricCar(String Brand,int model,this.BatteryCapacity) :super(Brand,model);


displayInfo(){
print("Brand is :$Brand");
print("Model is :$model");
print("Battery Capacity is :$BatteryCapacity mah");
}
}