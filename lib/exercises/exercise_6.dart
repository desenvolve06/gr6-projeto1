import 'dart:math';

String checkpreviousnext(int value) {
  Random random = Random();

  
  
  int randomNumber =  random.nextInt(value) ;
  int previous = randomNumber - 1;
  int next = randomNumber + 1;

  return 'Random Number: $randomNumber'
       '\n previous: $previous' 
       '\n next: $next';
  
}