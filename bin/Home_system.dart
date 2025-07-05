abstract class Device {
  String? name;
  Device(this.name);

  void status();
}

mixin Switchable {
  bool isOn = true;

  void turnOn() {
    isOn = true;
    print("Device turned ON");
  }

  void turnOff() {
    isOn = false;
    print("Device turned OFF");
  }
}

mixin Adjustable {
  int level = 0;

  void adjust(int newLevel) {
    level = newLevel;
    print("Adjusted to level $level");
  }
}

class Light extends Device with Switchable {
  Light(String name) : super(name);

  @override
  void status() {
    print("Light '$name' is ${isOn ? 'ON' : 'OFF'}");
  }
}

class Fan extends Device with Switchable, Adjustable {
  Fan(String name) : super(name);

  @override
  void status() {
    print("Fan '$name' is ${isOn ? 'ON' : 'OFF'} at speed $level");
  }
}
void main() {
  Light bulb = Light("Bedroom Light");
  bulb.turnOn();
  bulb.status();

  print("==============");

  Fan ceilingFan = Fan("Hall Fan");
  ceilingFan.turnOn();
  ceilingFan.adjust(3);
  ceilingFan.status();
}
