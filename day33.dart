// Dart program: Transport Booking System with Polymorphism

// Base class
abstract class Transport {
  String vehicleName;
  double farePerKm;

  Transport(this.vehicleName, this.farePerKm);

  // Abstract method to be overridden
  double calculateFare(double distance);

  void displayFare(double distance) {
    double fare = calculateFare(distance);
    print('$vehicleName fare for $distance km: ₹$fare');
  }
}

// Subclass: Bus
class Bus extends Transport {
  int seatingCapacity;

  Bus(String vehicleName, double farePerKm, this.seatingCapacity)
      : super(vehicleName, farePerKm);

  @override
  double calculateFare(double distance) {
    return distance * farePerKm * 0.8; // Discount for shared ride
  }
}

// Subclass: Taxi
class Taxi extends Transport {
  Taxi(String vehicleName, double farePerKm) : super(vehicleName, farePerKm);

  @override
  double calculateFare(double distance) {
    return distance * farePerKm; // No discount
  }
}

// Subclass: Train
class Train extends Transport {
  int coaches;

  Train(String vehicleName, double farePerKm, this.coaches)
      : super(vehicleName, farePerKm);

  @override
  double calculateFare(double distance) {
    return distance * farePerKm * 0.5; // Cheaper for long journeys
  }
}

void main() {
  // Creating transport objects
  Transport bus = Bus('City Bus', 10, 40);
  Transport taxi = Taxi('Yellow Taxi', 20);
  Transport train = Train('Express Train', 5, 12);

  // Store in a list (runtime polymorphism)
  List<Transport> transports = [bus, taxi, train];

  double distance = 15; // Example distance

  // Calculate fares for each transport
  for (var t in transports) {
    t.displayFare(distance);
  }
}