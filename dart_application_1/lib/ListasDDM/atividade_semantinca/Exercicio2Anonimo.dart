import 'dart:io';

void main() {
  var calcularTempo = (DateTime dataInicial) {
    var diferenca = DateTime.now().difference(dataInicial);

    var anos = (diferenca.inDays / 365).floor();
    var dias = diferenca.inDays % 365;
    var horas = diferenca.inHours % 24;

    print(
        'Já se passaram $anos anos, $dias dias e $horas horas desde $dataInicial');
  };

  print('Digite uma data inicial no formato yyyy-mm-dd:');
  var dataInicial = DateTime.parse(stdin.readLineSync()!);
  calcularTempo(dataInicial);
}
