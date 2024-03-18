String checkAge(String name, int age) {
  String result = '';
  result = age >= 18 ? 'is of legal age $age' : 'is a minor $age';
  return result;
}
