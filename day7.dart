import 'dart:io';
import 'dart:math';

void main() {
  var random = Random();
  int secretNumber = random.nextInt(10) + 1; 

  print('Guess the number (between 1 and 10):');
  String? input = stdin.readLineSync();

  if (input != null) {
    int guess = int.parse(input);
    if (guess == secretNumber) {
      print('🎉 Correct! The number was $secretNumber.');
    } else {
      print('❌ Wrong! The number was $secretNumber.');
    }
  }
}