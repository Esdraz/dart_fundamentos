// variaveis de nivel superior nao podem ser inicializadas depois
// nao é permitido
// String nomeSuperior;

String nomeSuperior = 'Francisco';
String? nomeSuperiorOpc;

void main() {
  // variaveis locais nao precisam ser inicializadas de cara porem
  // podem  ser inicializadas sem valor e depois ser atribuido um valor
  String nomeCompleto;
  String? nomeCompletoOpc;
  // String? - Informa que a variavel pode ser nula
  // String? nomeCompleto = 'Francisco Sousa'; // variavel nao e mais nula
  nomeCompleto = 'Francisco Sousa';

  // variaveis locais que sao nulas(nullable) por padrao
  // se for atribuido um valor a ela, automaticamente elas sao
  // promovidas a nao nulo (non-null)
  nomeCompletoOpc = '';

  // variaveis de nivel superior NUNCA sao promovidas para nao nulo(non-null)
  nomeSuperiorOpc = '';

  print(nomeCompleto.length);
  print(nomeSuperior.length);

/* 
  //Tratamento null safety
  String? nomeCompleto;
  if (nomeCompleto != null) {
    print(nomeCompleto.length);
  } else {
    print('É nulo!');
  }
 */
  // String? nomeCompleto; //* ? String aceita nulo

  print(nomeCompleto
      .length); //* ! força compilador a aceitar nulo (vai da erro de compilacao nesse caso)
}
