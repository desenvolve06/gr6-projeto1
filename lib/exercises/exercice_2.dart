
import 'dart:math';

void checkSum(int a, int b, int c) {
  int sum = a + b;

  print('The sum of A and B is: $sum');

  if (sum > c) {
    print('The sum of A and B is greater than C.');
  } else {
    print('The sum of A and B is less than or equal to C.');
  }
}

void main() {
  Random random = Random();

  int A = random.nextInt(100);
  int B = random.nextInt(100);
  int C = random.nextInt(100);

  checkSum(A, B, C);
}