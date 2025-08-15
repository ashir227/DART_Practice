import 'dart:async';

class Car {
  String? Brand;
  String? Model;
  int? year;
  Car(this.Brand, this.Model, this.year);

  displayinfo() {
    print("Brand is $Brand");
    print("Model is $Model");
    print("Car Year is $year");
  }
}

void main() {
  Car obj7 = Car("Ferrari", "YFG", 2020);
  obj7.displayinfo();
}
