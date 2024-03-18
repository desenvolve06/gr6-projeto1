import 'dart:math';

bool isPrime(int value) {
  if (value < 2) {
    return false;
  }
  for (int i = 2; i * i <= value; i++) {
    if (value % i == 0) {
      return false;
    }
  }
  return true;
}

void primeMessage(int value) {
  if (isPrime(value)) {
    print('$value is PRIME.');
  } else {
    print('$value is not a prime!');
  }
}

void challenge17() {
  Random random = Random();
  int value = random.nextInt(100);
  primeMessage(value);
}
