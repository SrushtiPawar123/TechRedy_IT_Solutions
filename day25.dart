// Base class
abstract class Payment {
  void processPayment(double amount);
}

// Derived class: Credit Card
class CreditCardPayment extends Payment {
  @override
  void processPayment(double amount) {
    print("Processing Credit Card payment of ₹$amount");
  }
}

// Derived class: PayPal
class PayPalPayment extends Payment {
  @override
  void processPayment(double amount) {
    print("Processing PayPal payment of ₹$amount");
  }
}

// Derived class: Bank Transfer
class BankTransferPayment extends Payment {
  @override
  void processPayment(double amount) {
    print("Processing Bank Transfer payment of ₹$amount");
  }
}

// Main function
void main() {
  // Polymorphism in action
  Payment payment;

  payment = CreditCardPayment();
  payment.processPayment(1500.00);

  payment = PayPalPayment();
  payment.processPayment(2500.50);

  payment = BankTransferPayment();
  payment.processPayment(5000.75);
}