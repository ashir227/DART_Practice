import 'dart:async';
import 'dart:collection';

mixin fly{
void canfly(){
print("This can fly");
}
}
mixin swim{
  void canswim(){
    print("This can Swim");
  }
}

class Duck with fly, swim{
void sound(){
  print("Quack");
}
}
void main(){
  Duck obj = Duck();
  obj.sound();
  obj.canfly();
  obj.canswim();
}