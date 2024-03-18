String descendingOrder(int a, int b, int c) {
  List<int> numbers = [a, b, c];
  numbers.sort((a, b) => b.compareTo(a));

  String result = "Valores em ordem decrescente: ${numbers.join(', ')}";
  return result;
}
