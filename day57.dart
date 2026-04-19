// Demonstrating Polymorphism in Dart with Interfaces

// Defining an interface using abstract class
abstract class PaymentGateway {
  void pay(double amount);
}

// Implementing PaymentGateway in CreditCardPayment
class CreditCardPayment implements PaymentGateway {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using Credit Card.");
  }
}

// Implementing PaymentGateway in PayPalPayment
class PayPalPayment implements PaymentGateway {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using PayPal.");
  }
}

// Implementing PaymentGateway in UpiPayment
class UpiPayment implements PaymentGateway {
  @override
  void pay(double amount) {
    print("Paid ₹$amount using UPI.");
  }
}

void main() {
  // Polymorphism: same interface, different implementations
  PaymentGateway payment1 = CreditCardPayment();
  PaymentGateway payment2 = PayPalPayment();
  PaymentGateway payment3 = UpiPayment();

  // Each call executes the overridden version
  payment1.pay(500.0);  // Output: Paid ₹500.0 using Credit Card.
  payment2.pay(1200.0); // Output: Paid ₹1200.0 using PayPal.
  payment3.pay(300.0);  // Output: Paid ₹300.0 using UPI.
}
