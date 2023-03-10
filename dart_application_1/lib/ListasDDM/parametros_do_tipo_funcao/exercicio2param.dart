import 'dart:io';

void main() {
  double salario = 2000.0;
  double valor = 500.0;
  int opcao;

  do {
    print('Digite a opção desejada:');
    print('1 - Adicionar valor ao salário');
    print('2 - Descontar valor do salário');
    print('3 - Adicionar bônus ao salário');
    print('0 - Sair');

    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        double novoSalario = adicionarValorAoSalario(salario, valor);
        double percentualAdicional =
            calcularPercentualAdicional(salario, novoSalario);

        print('Novo salário: R\$${novoSalario.toStringAsFixed(2)}');
        print(
            'Percentual adicionado: ${percentualAdicional.toStringAsFixed(2)}%');
        break;
      case 2:
        double novoSalario = descontarValorDoSalario(salario, valor);
        double percentualDesconto =
            calcularPercentualDesconto(salario, novoSalario);

        print('Novo salário: R\$${novoSalario.toStringAsFixed(2)}');
        print(
            'Percentual descontado: ${percentualDesconto.toStringAsFixed(2)}%');
        break;
      case 3:
        double bonus = calcularValorComEncargo(valor, 10);
        double novoSalario = adicionarValorAoSalario(salario, bonus);
        double percentualAdicional =
            calcularPercentualAdicional(salario, novoSalario);

        print('Novo salário: R\$${novoSalario.toStringAsFixed(2)}');
        print(
            'Percentual adicionado: ${percentualAdicional.toStringAsFixed(2)}%');
        break;
      case 0:
        print('Saindo...');
        break;
      default:
        print('Opção inválida.');
        break;
    }
  } while (opcao != 0);
}

double adicionarValorAoSalario(double salario, double valor) {
  return salario + valor;
}

double calcularPercentualAdicional(double salarioInicial, double salarioFinal) {
  return ((salarioFinal - salarioInicial) / salarioInicial) * 100;
}

double descontarValorDoSalario(double salario, double valor) {
  return salario - valor;
}

double calcularPercentualDesconto(double salarioInicial, double salarioFinal) {
  return ((salarioInicial - salarioFinal) / salarioInicial) * 100;
}

double calcularValorComEncargo(double valor, double encargo) {
  return valor * (1 - encargo / 100);
}
