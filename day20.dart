import 'dart:io';

class Complex {
  double real;
  double imag;

  // Default constructor (0 + 0i)
  Complex([this.real = 0.0, this.imag = 0.0]);

  // Operator overloading for addition
  Complex operator +(Complex other) {
    return Complex(this.real + other.real, this.imag + other.imag);
  }

  // Operator overloading for multiplication
  Complex operator *(Complex other) {
    double r = (this.real * other.real) - (this.imag * other.imag);
    double i = (this.real * other.imag) + (this.imag * other.real);
    return Complex(r, i);
  }

  // Print operator (<< equivalent in Dart)
  @override
  String toString() {
    String sign = imag >= 0 ? "+" : "-";
    return "$real $sign ${imag.abs()}i";
  }

  // Read operator (>> equivalent in Dart)
  static Complex readComplex() {
    stdout.write("Enter real part: ");
    double r = double.parse(stdin.readLineSync()!);

    stdout.write("Enter imaginary part: ");
    double i = double.parse(stdin.readLineSync()!);

    return Complex(r, i);
  }
}

void main() {
  // Reading two complex numbers
  print("Enter first complex number:");
  Complex c1 = Complex.readComplex();

  print("\nEnter second complex number:");
  Complex c2 = Complex.readComplex();

  // Addition
  Complex sum = c1 + c2;
  print("\nSum: $sum");

  // Multiplication
  Complex product = c1 * c2;
  print("Product: $product");
}