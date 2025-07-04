import 'dart:io';
class Device{
  String? brand;
  brandname(){
    print("Phone Brand Is:");
  }
}
mixin camerafeature{
  String? click;
  takephoto(){
print("Take Photo like a pro $click");
  }
}
class smartphone extends Device with camerafeature{
@override
brandname() {
    print("What is Brand Name");
    return super.brandname();
  }
}
void main(){
stdout.write("name is :");
String? brand = stdin.readLineSync();
stdout.write("Phote is :");
String? click = stdin.readLineSync();
smartphone obj = smartphone();
obj.brandname = brand;
obj.takephoto = click;
obj.brandname();
obj.takephoto();
}