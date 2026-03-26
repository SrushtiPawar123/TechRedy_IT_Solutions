
class Calculator {
  // Method to add integers (two or three numbers)
  int addInt(int a, int b, [int? c]) {
    if (c != null) {
      return a + b + c;
    }
    return a + b;
  }

  // Method to add doubles
  double addDouble(double a, double b) {
    return a + b;
  }
}

void main() {
  Calculator calc = Calculator();

  // Adding two integers
  print("Sum of 10 and 20 (int): ${calc.addInt(10, 20)}");

  // Adding three integers
  print("Sum of 5, 15 and 25 (int): ${calc.addInt(5, 15, 25)}");

  // Adding two doubles
  print("Sum of 12.5 and 7.3 (double): ${calc.addDouble(12.5, 7.3)}");
}