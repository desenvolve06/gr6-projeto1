int countWordOccurrences(String palavra, String frase) {
  // Transforma a frase e a palavra para minúsculas para fazer a comparação sem diferenciação de maiúsculas e minúsculas
  frase = frase.toLowerCase();
  palavra = palavra.toLowerCase();

  // Usando expressão regular para separar as palavras na frase
  List<String> palavrasNaFrase = frase.split(RegExp(r'\W+'));

  int count = 0;
  for (String palavraNaFrase in palavrasNaFrase) {
    // Verifica se a palavra na frase é igual à palavra desejada
    if (palavraNaFrase == palavra) {
      count++;
    }
  }

  return count;
}

List<dynamic> challenge18() {
  String palavra = "jose";
  String frase =
      "me chamo jose, jose eu gosto de ser chamado, jose 3 vezes pois é";
  int resultado = countWordOccurrences(palavra, frase);

  return [palavra, frase, resultado];
}
