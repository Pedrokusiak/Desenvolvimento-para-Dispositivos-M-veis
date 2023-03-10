void main() {
  Function(double, double) salarioAuxiliar =
      (diasTrabalhados, valorPorHora) => diasTrabalhados * valorPorHora * 4;
  Function(double, double) salarioJunior =
      (diasTrabalhados, valorPorHora) => diasTrabalhados * valorPorHora * 6;
  Function(double, double) salarioPleno =
      (diasTrabalhados, valorPorHora) => diasTrabalhados * valorPorHora * 8;

  print('Salário do auxiliar: ${salarioAuxiliar(20, 10)}');
  print('Salário do júnior: ${salarioJunior(20, 10)}');
  print('Salário do pleno: ${salarioPleno(20, 10)}');
}
