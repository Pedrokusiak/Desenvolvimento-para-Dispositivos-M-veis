//Exercício 1 - faça a chamada do método adicionarSalario validando se o valor é positivo.
void main() {
  double salario = 2000.0;
  double valor = 500.0;
  adicionarSalario(salario, valor, ePositivo);
}

void adicionarSalario(
    double salario, double valor, Function(double valor) validacao) {
  final eValido = validacao(valor);
  if (eValido) {
    final total = salario + valor;
    print(total);
  }
}

bool ePositivo(double valor) {
  return (valor > 0);
}
