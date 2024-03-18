import 'dart:math';

List<int> generateRandomNumbers(int length) {
  Random random = Random();
  List<int> numbers = List.generate(length, (index) => random.nextInt(10));
  return numbers;
}

String findMinMax(List<int> numbers) {
  int min = numbers[0];
  int max = numbers[0];
  String result = '';

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  result = 'Minimum number: $min\nMaximum number: $max';
  return result;
}