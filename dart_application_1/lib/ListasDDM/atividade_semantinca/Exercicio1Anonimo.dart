import 'dart:io';

void main() {
  var validarNumero = (int numero) {
    if (numero % 2 == 0) {
      print('O número é par');
    } else {
      print('O número é ímpar');
    }

    if (numero > 0) {
      print('O número é maior que zero');
    } else {
      print('O número não é maior que zero');
    }

    var primo = true;
    for (var i = 2; i <= numero / 2; i++) {
      if (numero % i == 0) {
        primo = false;
        break;
      }
    }
    if (primo) {
      print('O número é primo');
    } else {
      print('O número não é primo');
    }
  };

  // Solicitando um número e chamando a função anônima para validá-lo
  print('Digite um número:');
  var numero = int.parse(stdin.readLineSync()!);
  validarNumero(numero);
}
