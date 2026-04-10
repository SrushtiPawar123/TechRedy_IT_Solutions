// Demonstrating Polymorphism in Dart

// Base class
abstract class Vehicle {
  String name;

  Vehicle(this.name);

  // Abstract method to be overridden
  void fuelEfficiency();
}

// Derived class: Car
class Car extends Vehicle {
  Car(String name) : super(name);

  @override
  void fuelEfficiency() {
    print("$name: Fuel efficiency is 15 km/l.");
  }
}

// Derived class: Bike
class Bike extends Vehicle {
  Bike(String name) : super(name);

  @override
  void fuelEfficiency() {
    print("$name: Fuel efficiency is 40 km/l.");
  }
}

// Derived class: Truck
class Truck extends Vehicle {
  Truck(String name) : super(name);

  @override
  void fuelEfficiency() {
    print("$name: Fuel efficiency is 8 km/l.");
  }
}

// Main function
void main() {
  // Polymorphic behavior: same interface, different implementations
  List<Vehicle> vehicles = [
    Car("Sedan"),
    Bike("Sports Bike"),
    Truck("Heavy Truck"),
  ];

  for (var v in vehicles) {
    v.fuelEfficiency(); // Calls the overridden method dynamically
  }
}
