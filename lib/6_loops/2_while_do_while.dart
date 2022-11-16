void main() {
  var numero = 0;
  print('while convencional');
  while (numero <= 10) {
    print(numero);
    numero++;
  }
  //while executa enquanto a condição é verdadeira
  print('do while');
  var indice = 0;
  print('while não sera executado!');
  while (indice > 0) {
    print(indice);
    indice++;
  }
  //do while executa pelo menos uma vez
  do {
    print(indice);
  } while (indice > 0);
}
