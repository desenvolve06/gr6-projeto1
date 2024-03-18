String checkAge(String nome, int idade) {
  if (idade >= 18) {
    return '$nome é maior de idade. tem $idade anos';
  }

  return '$nome é menor de idade. tem $idade anos';
}

List<dynamic> challenge10() {
  String nome = "Juliana";
  int idade = 16;
  String resultado = checkAge(nome, idade);
  return [nome, idade, resultado];
}
