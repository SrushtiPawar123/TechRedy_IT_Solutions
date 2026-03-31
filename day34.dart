// Example: Smart Device System using Mixins in Dart

// Base class
class SmartDevice {
  String name;
  SmartDevice(this.name);

  void deviceInfo() {
    print("Device: $name");
  }
}

// Mixin for connectivity features
mixin Connectivity {
  void connectToWiFi(String network) {
    print("Connected to Wi-Fi network: $network");
  }

  void connectToBluetooth(String device) {
    print("Connected to Bluetooth device: $device");
  }
}

// Mixin for battery management
mixin BatteryManagement {
  int batteryLevel = 100;

  void chargeBattery() {
    batteryLevel = 100;
    print("Battery fully charged.");
  }

  void useBattery(int percent) {
    if (batteryLevel - percent >= 0) {
      batteryLevel -= percent;
      print("Battery used: $percent%. Remaining: $batteryLevel%");
    } else {
      print("Not enough battery!");
    }
  }
}

// SmartPhone class using both mixins
class SmartPhone extends SmartDevice with Connectivity, BatteryManagement {
  SmartPhone(String name) : super(name);

  void makeCall(String contact) {
    print("Calling $contact...");
    useBattery(10);
  }
}

// SmartWatch class using both mixins
class SmartWatch extends SmartDevice with Connectivity, BatteryManagement {
  SmartWatch(String name) : super(name);

  void trackSteps(int steps) {
    print("Tracking $steps steps...");
    useBattery(5);
  }
}

void main() {
  SmartPhone phone = SmartPhone("Pixel 9");
  phone.deviceInfo();
  phone.connectToWiFi("Home_Network");
  phone.makeCall("Alice");
  phone.chargeBattery();

  print("");

  SmartWatch watch = SmartWatch("Galaxy Watch");
  watch.deviceInfo();
  watch.connectToBluetooth("Wireless Earbuds");
  watch.trackSteps(5000);
  watch.useBattery(20);
}