void main() {
  var numeros = List.generate(10, (index) => index);

  numeros.where((numero) => numero != 5).forEach((numero) => print(numero));

  final numerosAte6 = numeros
      .takeWhile((numero) => numero < 7)
      .where((numero) => numero != 5)
      .toList();
  print(numeros[1]);
  print(numerosAte6);

  final numerosRemoverAte5 = numeros.skipWhile((numero) => numero < 6).toList();
  print(numerosRemoverAte5);

  var nomes = ['Pedro', 'Jose', 'Maria', 'Leticia', 'Amanda'];
  var nomesSkip = nomes.skipWhile((nome) {
    if (nome != 'Maria') {
      return true;
    } else {
      return false;
    }
  }).toList();
  print(nomesSkip);

  var numeroStrList = numeros.map((numero) {
    return 'Numero é $numero';
  }).toList();
  print(numeroStrList);

  final numeroRevertidos = nomes.reversed.toList();
  print(numeroRevertidos);
}
