
String countEvenAndOddNumbers(List<int> numbers) {
  int evenCount = 0;
  int oddCount = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }

  String result = ' Numbers: $numbers \n';
  result += '  even numbers: $evenCount \n';
  result += '  odd numbers: $oddCount \n';

  return result;
}