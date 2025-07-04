import 'dart:io';

class Device {
  String? brand;

  brandname() {
    print("Phone Brand Is: $brand");
  }
}

mixin camerafeature {
  String? click;

  takephoto() {
    print("Take Photo like a pro: $click");
  }
}

class smartphone extends Device with camerafeature {
  @override
  brandname() {
    print("What is Brand Name?");
    return super.brandname();
  }
}

void main() {
  stdout.write("Enter phone brand: ");
  String? brand = stdin.readLineSync();

  stdout.write("Enter photo type or caption: ");
  String? click = stdin.readLineSync();

  smartphone obj = smartphone();
  obj.brand = brand;
  obj.click = click;

  obj.brandname();   // Shows brand name
  obj.takephoto();   // Shows photo feature
}
