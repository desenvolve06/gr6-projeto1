String calculateFactorial(int number) {
  int factorial = 1;
  String result = '';

  for (int i = 1; i <= number; i++) {
    factorial *= i;
    result = '\n The number: $number \n The factorial of $number is:'
        ' \n $factorial';
  }
  return result;
}
