// Define a mixin
mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

mixin Printer {
  void printData(String data) {
    print("Printing: $data");
  }
}

// Base class
class Device {
  void start() {
    print("Device started.");
  }
}

// Class using mixins
class SmartPhone extends Device with Logger, Printer {
  void call(String number) {
    print("Calling $number...");
  }
}

void main() {
  SmartPhone phone = SmartPhone();
  phone.start();          // From Device
  phone.call("123456789"); // Own method
  phone.log("Call started"); // From Logger mixin
  phone.printData("Hello World"); // From Printer mixin
}
