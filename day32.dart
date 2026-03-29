import 'dart:io';

// Custom Exception for invalid price
class InvalidPriceException implements Exception {
  String cause;
  InvalidPriceException(this.cause);
}

// Custom Exception for credit limit exceeded
class CreditLimitExceededException implements Exception {
  String cause;
  CreditLimitExceededException(this.cause);
}

void main() {
  List<double> prices = [];
  double total = 0;
  const double creditLimit = 5000;

  print("Enter item prices (type 'done' to finish):");

  while (true) {
    String? input = stdin.readLineSync();

    if (input == null || input.toLowerCase() == 'done') {
      break;
    }

    try {
      double price = double.parse(input);

      // Check for invalid price
      if (price < 0) {
        throw InvalidPriceException("Price cannot be negative!");
      }

      prices.add(price);
      total += price;

      // Check for credit limit
      if (total > creditLimit) {
        throw CreditLimitExceededException(
            "Total bill ₹$total exceeds credit limit of ₹$creditLimit!");
      }
    } on FormatException {
      print("❌ Invalid input! Please enter a number.");
    } on InvalidPriceException catch (e) {
      print("❌ Error: ${e.cause}");
    } on CreditLimitExceededException catch (e) {
      print("❌ Error: ${e.cause}");
      break; // Stop further processing
    }
  }

  print("\n🛒 Items purchased: $prices");
  print("💰 Final Bill: ₹$total");
  print("✅ Checkout complete!");
}