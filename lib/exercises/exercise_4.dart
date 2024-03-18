import 'dart:math';

String checknumber(int minNumber, int maxNumber) {
  Random random = Random();
  
  String result = '';

  int randomNumber =
      random.nextInt(maxNumber - minNumber + 1) + minNumber;

  String frase = 'Random number: $randomNumber.\n';

  if (randomNumber < 0 && randomNumber % 2 == 0)
  {
    result = 'The number is negative and even';
  }
  if (randomNumber < 0 && randomNumber % 2 != 0)
  {
    result = 'The number is negative and odd';
  }
  if (randomNumber > 0 && randomNumber % 2 == 0)
  {
    result = 'The number is positive and even';
  }
  if (randomNumber > 0 && randomNumber % 2 != 0)
  {
    result = 'The number is positive and odd';
  }

  return frase + result;
  }
