void main() {
  //! Detalhe sobre a String
  //! A String é composta por 4 campos (Nome|Idade|Profissão|Estado onde mora)
  final pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  //! Baseado no array acima monte um relatório onde:
  //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
  for (var paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final idade = int.tryParse(pacienteDados[1]) ?? 0; // ?? null-check

    if (idade > 20) {
      print('Acima de 20 anos: ${pacienteDados[0]}');
    }
  }
  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  var desenvolvedor = [];
  var estudante = [];
  var dentista = [];
  var jornalista = [];

  for (var paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final nome = pacienteDados[0];
    final profissao = pacienteDados[2].toLowerCase();

    if (profissao == 'desenvolvedor') {
      desenvolvedor.add(nome);
    }
    if (profissao == 'estudante') {
      estudante.add(nome);
    }
    if (profissao == 'dentista') {
      dentista.add(nome);
    }
    if (profissao == 'jornalista') {
      jornalista.add(nome);
    }
  }
  print('');
  print('Desenvolvedor: $desenvolvedor Total: ${desenvolvedor.length}');
  print('Estudante: $estudante Total: ${estudante.length}');
  print('Dentista: $dentista Total: ${dentista.length}');
  print('Jornalista: $jornalista Total: ${jornalista.length}');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  final regiao = [];

  for (var paciente in pacientes) {
    final pacienteDados = paciente.split('|');
    final nome = pacienteDados[0];
    final estado = pacienteDados[3].toLowerCase();

    if (estado == 'sp') {
      regiao.add(nome);
    }
  }
  print('');
  print('Paciente de SP: $regiao Total: ${regiao.length}');
}
