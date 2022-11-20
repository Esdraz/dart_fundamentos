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

  var contDev = 0;
  var contEstudante = 0;
  var contDentista = 0;
  var contJornalista = 0;
  var pacienteSP = 0;

  //! Baseado no array acima monte um relatório onde:
  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    var pacienteIdade = int.tryParse(dadosPaciente[1]);

    if (pacienteIdade! > 20) {
      //! 1 - Apresente os pacientes com mais de 20 anos e print o nome deles
      print('Pacientes acima de 20 anos: ${dadosPaciente[0]}');
    }

    if (dadosPaciente[2].toLowerCase().startsWith('desenv')) {
      contDev++;
    } else if (dadosPaciente[2].toLowerCase().startsWith('estud')) {
      contEstudante++;
    } else if (dadosPaciente[2].toLowerCase().startsWith('dent')) {
      contDentista++;
    } else if (dadosPaciente[2].toLowerCase().startsWith('jorna')) {
      contJornalista++;
    }

    if (dadosPaciente[3].toLowerCase().startsWith('sp')) {
      pacienteSP++;
    }
  }

  //! 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
  print(
      'Profissões: Desenvolvedor - $contDev, Estudante - $contEstudante, Dentista - $contDentista, Jornalista - $contJornalista');

  //! 3 - Apresente a quantidade de pacientes que moram em SP
  print('Pacientes que moram em SP: $pacienteSP');
}
