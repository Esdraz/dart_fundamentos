void main() {
  var numeros = List.generate(10, (index) => index);
  var nomes = ['Francisco', 'Pedro', 'Jose', 'Maria', 'Ana'];

  print('Imprimindo numeros com for convencional');
  for (var i = 0; i < numeros.length; i++) {
    print(numeros[i]);
  }

  print('Imprimindo nomes com for convencional');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }

  print('Imprimindo numeros com for in');
  for (var numero in numeros) {
    print(numero);
  }

  print('Imprimindo nomes com for in');
  for (var nome in nomes) {
    print(nome);
  }

  print('Imprimindo nomes com for convencional e break');
  for (var i = 0; i < nomes.length; i++) {
    print(nomes[i]);
    if (nomes[i] == 'Pedro') {
      break;
    }
  }

  print('Imprimindo nomes com for convencional com continue');
  for (var i = 0; i < nomes.length; i++) {
    if (i == 1 || i == 3) {
      continue;
    }
    print(nomes[i]);
  }

  print('Collection For');
  var listaInts = [1, 2, 3];
  var listaStrings = ['#0', '#01', for (var i in listaInts) '#$i'];
  print(listaStrings);
}
