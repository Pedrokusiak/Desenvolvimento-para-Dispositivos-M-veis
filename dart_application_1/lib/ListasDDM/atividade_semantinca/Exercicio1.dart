import 'dart:io';

bool Par(int numero) {
  return numero % 2 == 0;
}

bool MaiorQueZero(int numero) {
  return numero > 0;
}

bool Primo(int numero) {
  if (numero <= 1) {
    return false;
  }
  for (int i = 2; i <= (numero / 2).round(); i++) {
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int numero;

  do {
    stdout.write('Digite um número inteiro positivo: ');
    numero = int.parse(stdin.readLineSync()!);
  } while (!MaiorQueZero(numero));

  print('$numero é ${Par(numero) ? 'par' : 'ímpar'}.');
  print('$numero ${Primo(numero) ? 'é primo' : 'não é primo'}.');
}
