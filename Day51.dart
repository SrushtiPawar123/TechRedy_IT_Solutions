// Define a mixin for connectivity
mixin Connectivity {
  void connectToWiFi(String network) {
    print("Connected to WiFi network: $network");
  }

  void connectToBluetooth(String device) {
    print("Connected to Bluetooth device: $device");
  }
}

// Define a mixin for battery management
mixin Battery {
  int batteryLevel = 100;

  void chargeBattery() {
    batteryLevel = 100;
    print("Battery fully charged!");
  }

  void useBattery(int usage) {
    batteryLevel -= usage;
    if (batteryLevel < 0) batteryLevel = 0;
    print("Battery level: $batteryLevel%");
  }
}

// SmartPhone class using both mixins
class SmartPhone with Connectivity, Battery {
  void makeCall(String number) {
    print("Calling $number...");
  }
}

// SmartWatch class using both mixins
class SmartWatch with Connectivity, Battery {
  void showTime() {
    print("Showing current time...");
  }
}

void main() {
  SmartPhone phone = SmartPhone();
  phone.connectToWiFi("Home_Network");
  phone.makeCall("9876543210");
  phone.useBattery(30);

  print("-----");

  SmartWatch watch = SmartWatch();
  watch.connectToBluetooth("Wireless Earbuds");
  watch.showTime();
  watch.useBattery(20);
}
