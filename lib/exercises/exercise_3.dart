
import 'dart:math';

int calculateFactorial(int number) {
  int factorial = 1;
  for (int i = 1; i <= number; i++) {
    factorial *= i;
  }
  return factorial;
}

void main() {
  Random random = Random();
  int number = random.nextInt(10);
  int result = calculateFactorial(number);
  print("Randomly generated number: $number");
  print("The factorial of $number is: $result");
}
