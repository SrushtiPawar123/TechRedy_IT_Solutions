// Interface for fare calculation
abstract class FareCalculator {
  double calculateFare(double distance);
}

// Abstract class for common vehicle behavior
abstract class Vehicle implements FareCalculator {
  final String vehicleNumber;
  final int capacity;

  Vehicle(this.vehicleNumber, this.capacity);

  void start();
  void stop();
}

// Car class implementing Vehicle
class Car extends Vehicle {
  Car(String vehicleNumber, int capacity) : super(vehicleNumber, capacity);

  @override
  void start() => print("Car $vehicleNumber started.");

  @override
  void stop() => print("Car $vehicleNumber stopped.");

  @override
  double calculateFare(double distance) {
    return distance * 10; // ₹10 per km
  }
}

// Bike class implementing Vehicle
class Bike extends Vehicle {
  Bike(String vehicleNumber, int capacity) : super(vehicleNumber, capacity);

  @override
  void start() => print("Bike $vehicleNumber started.");

  @override
  void stop() => print("Bike $vehicleNumber stopped.");

  @override
  double calculateFare(double distance) {
    return distance * 5; // ₹5 per km
  }
}

// Bus class implementing Vehicle
class Bus extends Vehicle {
  Bus(String vehicleNumber, int capacity) : super(vehicleNumber, capacity);

  @override
  void start() => print("Bus $vehicleNumber started.");

  @override
  void stop() => print("Bus $vehicleNumber stopped.");

  @override
  double calculateFare(double distance) {
    return distance * 2; // ₹2 per km
  }
}

void main() {
  // Demonstrating polymorphism
  List<Vehicle> vehicles = [
    Car("MH12AB1234", 4),
    Bike("MH14XY5678", 2),
    Bus("MH20PQ4321", 40),
  ];

  for (var v in vehicles) {
    v.start();
    print("Fare for 10 km: ₹${v.calculateFare(10)}");
    v.stop();
    print("-----");
  }
}
