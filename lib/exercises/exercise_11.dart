String showMultiplicationTable(int number) {
  String result = '';

  for (int i = 1; i <= 10; i++) {
    int resultTab = number * i;
    result += "$number x $i = $resultTab\n";
  }
  return result;
}
