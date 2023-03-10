import 'dart:io';

double calcularSalario(int diasTrabalhados, double valorHora, String nivel) {
  double salarioBase = diasTrabalhados * 8 * valorHora;

  switch (nivel) {
    case 'auxiliar':
      return salarioBase * 0.8;
    case 'junior':
      return salarioBase * 0.9;
    case 'pleno':
      return salarioBase;
    default:
      return 0.0;
  }
}

void main() {
  stdout.write('Digite a quantidade de dias trabalhados: ');
  int diasTrabalhados = int.parse(stdin.readLineSync()!);

  stdout.write('Digite o valor recebido por hora: ');
  double valorHora = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o nível do funcionário (auxiliar, junior ou pleno): ');
  String nivel = (stdin.readLineSync()!);

  double salario = calcularSalario(diasTrabalhados, valorHora, nivel);
  print('Salário: R\$ $salario');
}
