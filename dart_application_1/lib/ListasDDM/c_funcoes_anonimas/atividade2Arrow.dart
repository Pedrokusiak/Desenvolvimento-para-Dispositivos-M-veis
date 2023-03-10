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
        double novoSalario = adicionarValor(salario, valor);
        double percentualAdicional =
            calcularPercentualAdicional(salario, novoSalario);

        print('Novo salário: R\$${novoSalario.toStringAsFixed(2)}');
        print(
            'Percentual adicionado: ${percentualAdicional.toStringAsFixed(2)}%');
        break;
      case 2:
        double novoSalario = descontarValor(salario, valor);
        double percentualDesconto =
            calcularPercentualDesconto(salario, novoSalario);

        print('Novo salário: R\$${novoSalario.toStringAsFixed(2)}');
        print(
            'Percentual descontado: ${percentualDesconto.toStringAsFixed(2)}%');
        break;
      case 3:
        double bonus = calcularValorComEncargo(valor, 10);
        double novoSalario = adicionarValor(salario, bonus);
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

// Adiciona valor ao salário
double adicionarValor(double salario, double valor) => salario + valor;

// Desconta valor do salário
double descontarValor(double salario, double valor) => salario - valor;

// Adiciona bônus ao salário com encargo de 10%
double adicionarBonus(double salario, double bonus) =>
    salario + (bonus - (bonus * 0.1));

double calcularPercentualDesconto(double salarioInicial, double salarioFinal) =>
    ((salarioInicial - salarioFinal) / salarioInicial) * 100;

double calcularPercentualAdicional(
        double salarioInicial, double salarioFinal) =>
    ((salarioFinal - salarioInicial) / salarioInicial) * 100;

double calcularValorComEncargo(double valor, double encargo) =>
    valor * (1 - encargo / 100);
