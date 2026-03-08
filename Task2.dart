import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  print("\n--- Arithmetic Operations ---");
  print("Addition: ${num1 + num2}");
  
  print("Subtraction: ${num1 - num2}");
  print("Multiplication: ${num1 * num2}");
  
  if (num2 != 0) {
    print("Division: ${num1 / num2}");
  } else {
    print("Division: Cannot divide by zero");
  }

  print("\n-----------------------------");

  stdout.write("Enter a number to check Positive/Negative/Zero: ");
  double number = double.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("The number is Positive");
  } else if (number < 0) {
    print("The number is Negative");
  } else {
    print("The number is Zero");
  }

  print("\n-----------------------------");

  stdout.write("Enter a number to check Even/Odd: ");
  int evenOdd = int.parse(stdin.readLineSync()!);

  if (evenOdd % 2 == 0) {
    print("The number is Even");
  } else {
    print("The number is Odd");
  }

  print("\n-----------------------------");

  stdout.write("Enter marks (0-100): ");
  int marks = int.parse(stdin.readLineSync()!);

  if (marks >= 90) {
    print("Grade: A");
  } else if (marks >= 75) {
    print("Grade: B");
  } else if (marks >= 50) {
    print("Grade: C");
  } else {
    print("Result: Fail");
  }
}