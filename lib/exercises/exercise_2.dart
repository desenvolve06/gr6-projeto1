import 'dart:math';

  String checkSum(int a, int b, int c) {
    int sum = a + b;
    String result = '';

    if (sum > c) {
      result = 'The sum of A($a) \n + B($b) is = $sum \n greater than C = $c';
    } else {
      result = 'The sum of A($a) \n + B($b) is = $sum \n less than or \n equal to C = $c';
    }
    return result;
}

