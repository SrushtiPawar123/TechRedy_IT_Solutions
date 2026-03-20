
class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void displayInfo() {
    print('Brand: $brand, Speed: $speed km/h');
  }

  void move() {
    print('$brand vehicle is moving at $speed km/h.');
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, int speed, this.doors) : super(brand, speed);

  @override
  void move() {
    print('$brand car with $doors doors is driving at $speed km/h.');
  }
}

class Bike extends Vehicle {
  bool hasGear;

  Bike(String brand, int speed, this.hasGear) : super(brand, speed);

  @override
  void move() {
    print('$brand bike ${hasGear ? "with gears" : "without gears"} '
          'is riding at $speed km/h.');
  }
}

void main() {
  // Create objects
  Vehicle vehicle = Vehicle('Generic', 60);
  Car car = Car('Tesla', 120, 4);
  Bike bike = Bike('Yamaha', 80, true);

  vehicle.displayInfo();
  car.displayInfo();
  bike.displayInfo();

  print('\n--- Demonstrating Polymorphism ---');

  vehicle.move();
  car.move();
  bike.move();
}