String checkTwoNumbers(int randomNumberA,int randomNumberB) {
  
  String result = '';  


  if (randomNumberA == randomNumberB)
  {
   int resultSum = randomNumberA + randomNumberB;
    result ='Sum: $resultSum';
  }
  if (randomNumberA != randomNumberB)
  {
   int resultMult = randomNumberA * randomNumberB;
    result = 'Mult: $resultMult';
  }
  
  return 'random number A: $randomNumberA \n'
  'random number B: $randomNumberB \n'
  '$result';
}
