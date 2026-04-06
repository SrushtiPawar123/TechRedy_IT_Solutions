// Abstract class defining the contract
abstract class Payment {
  // Abstract method (must be implemented by subclasses)
  void processPayment(double amount);

  // Concrete method (common functionality)
  void paymentSuccess(double amount) {
    print("Payment of ₹$amount processed successfully!");
  }
}

// Interface using abstract class (Dart doesn't have 'interface' keyword)
abstract class Refundable {
  void refund(double amount);
}

// Concrete class implementing abstract class
class CreditCardPayment extends Payment implements Refundable {
  @override
  void processPayment(double amount) {
    print("Processing Credit Card payment of ₹$amount...");
    paymentSuccess(amount);
  }

  @override
  void refund(double amount) {
    print("Refunding ₹$amount to Credit Card...");
  }
}

// Another concrete class
class UPIPayment extends Payment {
  @override
  void processPayment(double amount) {
    print("Processing UPI payment of ₹$amount...");
    paymentSuccess(amount);
  }
}

void main() {
  // Polymorphism: same method called on different objects
  Payment payment1 = CreditCardPayment();
  payment1.processPayment(1500);

  Payment payment2 = UPIPayment();
  payment2.processPayment(800);

  // Using Refundable interface
  Refundable refundObj = CreditCardPayment();
  refundObj.refund(500);
}
