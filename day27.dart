
class Vehicle {
  void move() {
    print("The vehicle is moving...");
  }
}

class Car extends Vehicle {
  @override
  void move() {
    print("The car is driving on the road.");
  }
}

class Bike extends Vehicle {
  @override
  void move() {
    print("The bike is racing on the track.");
  }
}

void main() {
  // Creating objects
  Vehicle v1 = Car();
  Vehicle v2 = Bike();

  v1.move(); // Calls Car's overridden method
  v2.move(); // Calls Bike's overridden method
}