void main() {
  String nomeCompleto = 'Franicsco';
  print(nomeCompleto);
  nomeCompleto = 'Francisco Sousa';

  // final
  // nao podem ser alteradas depois de inicializadas (imutaveis)
  // sao definidas em tempo de execuçao (runtime)
  final nomeCompletoFinal = 'Francisco Sousa';
  // nomeCompletoFinal = 'Francisco Sousa'; //* nao funciona

  // dessa forma abaixo funciona:
  // final nomeCompletoFinal1;
  // nomeCompletoFinal1 = 'Jose Joao';

  // const
  // nao podem ser alteradas depois de inicializadas (imutaveis)
  // sao definidas no programa em tempo de COMPILACAO
  // so recebe valores de outras constantes
  // desta forma nao funciona:
  // const nomeCompletoConst2 = nomeCompleto;

  const nomeCompletoConst = 'Francisco Sousa';
  const nomeCompletoConst1 = nomeCompletoConst;
}
