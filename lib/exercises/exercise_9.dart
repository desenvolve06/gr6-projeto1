import 'dart:math';

double calcularMedia(List<double> notas) {
  double soma = 0;

  // Calcula a soma das notas
  for (double nota in notas) {
    soma += nota;
  }

  // Calcula a média das notas
  double media = soma / notas.length;
  return media;
}

String verificarStatus(double media) {
  if (media >= 7.0) {
    return 'APROVADO';
  } else {
    return 'REPROVADO';
  }
}

List<dynamic> challenge9() {
  // Alterando o retorno para uma lista de dynamic
  List<double> notas = [8.5, 7.2, 6.8, 9.0]; // Lista de notas do aluno
  double media = calcularMedia(notas); // Calcula a média das notas
  String status =
      verificarStatus(media); // Verifica se o aluno foi aprovado ou reprovado

  // Agora você pode usar a variável status para exibir na sua interface de usuário
  print('A média do aluno é: $media');
  print('O aluno foi $status!');

  return [media, status]; // Retornando a média e o status
}
