import 'dart:io';

void main() {

  print("Name: Srushti Pawar");
  print("College: XYZ Engineering College");
  print("City: Pune");

  print("\n-------------------");

  int age = 21;
  double percentage = 85.5;
  String course = "Engineering";
  bool isPassed = true;

  print("Age: $age");
  print("Percentage: $percentage");
  print("Course: $course");
  print("Passed: $isPassed");

  print("\n-------------------");

  stdout.write("Enter your name: ");
  String? userName = stdin.readLineSync();

  stdout.write("Enter your age: ");
  int userAge = int.parse(stdin.readLineSync()!);

  print("My name is $userName and I am $userAge years old.");

  print("\n-------------------");

  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int square = number * number;
  int cube = number * number * number;

  print("Square: $square");
  print("Cube: $cube");
}