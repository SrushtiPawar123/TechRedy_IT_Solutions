// Example: Encapsulation with Getters and Setters in Dart

class BankAccount {
  // Private field (encapsulation)
  double _balance;

  // Constructor
  BankAccount(this._balance);

  // Getter to access balance
  double get balance => _balance;

  // Setter to update balance with validation
  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount");
    } else {
      print("Invalid deposit amount!");
    }
  }

  // Method to withdraw money with validation
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Invalid withdrawal amount!");
    }
  }
}

void main() {
  // Create a bank account with initial balance
  BankAccount account = BankAccount(1000);

  // Access balance using getter
  print("Initial Balance: ${account.balance}");

  // Deposit money using setter
  account.deposit = 500;

  // Withdraw money using method
  account.withdraw(300);

  // Final balance
  print("Final Balance: ${account.balance}");
}
