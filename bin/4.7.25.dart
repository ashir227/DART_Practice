abstract class Vehicle {
  String brand;
  String model;

  Vehicle(this.brand, this.model);

  void startEngine();  // abstract method
}

class Car extends Vehicle {
  Car(String brand, String model) : super(brand, model);

  @override
  void startEngine() {
    print("Car Brand is $brand");
    print("Car Model is $model");
    print("Car Engine Started");
  }
}

class Bike extends Vehicle {
  Bike(String brand, String model) : super(brand, model);

  @override
  void startEngine() {
    print("Bike Brand is $brand");
    print("Bike Model is $model");
    print("Bike Engine Started");
  }
}
 
void main() {
  Car obj = Car("Toyota", "New 2025");
  obj.startEngine();

  print("-------------");

  Bike obj1 = Bike("Honda", "Old 2024");
  obj1.startEngine();
}
