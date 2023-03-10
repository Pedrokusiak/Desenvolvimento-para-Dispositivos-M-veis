import 'dart:io';

TempoData calculaTempoPassado() {
  stdout.write("Digite a data inicial no formato dd/mm/aaaa hh:mm:ss: ");
  String entrada = stdin.readLineSync()!;

  DateTime dataInicial = DateTime.parse(entrada);
  DateTime dataAtual = DateTime.now();

  Duration diferenca = dataAtual.difference(dataInicial);

  TempoData tempo = new TempoData();

  tempo.anos = diferenca.inDays % 365;
  tempo.dias = diferenca.inDays;
  tempo.horas = diferenca.inHours;

  return tempo;
}

class TempoData {
  int anos = 0;
  int dias = 0;
  int horas = 0;
}
