import 'package:doe_mais/views/components/question_answer.dart';
import 'package:flutter/material.dart';

class Doubts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dúvidas Frequentes'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            QuestionAnswerWidget(
                question: 'O que é a doação de sangue?',
                answer:
                    'A doação de sangue é um gesto solidário de doar uma pequena quantidade do próprio sangue para salvar a vida de pessoas que se submetem a tratamentos e intervenções médicas de grande porte e complexidade, como transfusões, transplantes, procedimentos oncológicos e cirurgias.'),
            QuestionAnswerWidget(
                question: 'Como doar sangue?',
                answer:
                    'Para doar sangue, basta procurar as unidades de coleta de sangue, como os Hemocentros, para checar se você atende aos requisitos necessários para a doação.\n\nExistem impedimentos temporários e também impedimentos definitivos. No mais, basta estar embuído pelo desejo de ajudar o próximo.'),
            QuestionAnswerWidget(
                question: 'Quais são os requisitos para doação de sangue?',
                answer:
                    'Os requisitos para doar sangue é estar com bom estado de saúde e seguir os seguintes passos:\n\n× Estar alimentado.\n× Evite alimentos gordurosos nas 3 horas que antecedem a doação de sangue.\n× Caso seja após o almoço, aguardar 2 horas.\n× Ter dormido pelo menos 6 horas nas últimas 24 horas.\n× Pessoas com idade entre 60 e 69 anos só poderão doar sangue se já o tiverem feito antes dos 60 anos.\n× A frequência máxima é de quatro doações de sangue anuais para o homem e de três doações de sangue anuais para as mulher.\n× O intervalo mínimo entre uma doação de sangue e outra é de dois meses para os homens e de três meses para as mulheres.'),
            QuestionAnswerWidget(
                question:
                    'Quais são os impedimentos temporários para doar sangue?',
                answer:
                    '× Gripe, resfriado e febre: aguardar 7 dias após o desaparecimento dos sintomas.\n× Período gestacional.\n× Período pós-gravidez: 90 dias para parto normal e 180 dias para cesariana.\n× Amamentação: até 12 meses após o parto.\n× Ingestão de bebida alcoólica nas 12 horas que antecedem a doação.\n× Tatuagem e/ou piercing nos últimos 12 meses (piercing em cavidade oral ou região genital impedem a doação)\n× Extração dentária: 72 horas.\n× Apendicite, hérnia, amigdalectomia, varizes: 3 meses.\n× Colecistectomia, histerectomia, nefrectomia, redução de fraturas, politraumatismos sem seqüelas graves, tireoidectomia, colectomia: 6 meses.\n× Transfusão de sangue: 1 ano.\n× Vacinação: o tempo de impedimento varia de acordo com o tipo de vacina.\n× Exames/procedimentos com utilização de endoscópio nos últimos 6 meses.\n× Ter sido exposto a situações de risco acrescido para infecções sexualmente transmissíveis (aguardar 12 meses após a exposição).'),
            QuestionAnswerWidget(
                question:
                    'Quais são os impedimentos definitivos para doar sangue?',
                answer:
                    '× Ter passado por um quadro de hepatite após os 11 anos de idade.\n× Evidência clínica ou laboratorial das seguintes doenças transmissíveis pelo sangue:  Hepatites B e C, AIDS (vírus HIV), doenças associadas aos vírus HTLV I e II e Doença de Chagas.\n× Uso de drogas ilícitas injetáveis.\n× Malária'),
            QuestionAnswerWidget(
                question: 'Qual o intervalo entre doações de sangue?',
                answer:
                    'Homens:	de 2 em 2 meses, sendo, no máximo, 4 vezes ao ano. \n\nMulheres:	3 em 3 meses, sendo, no máximo, 3 doações anuais. '),
            QuestionAnswerWidget(
                question: 'Qual a quantidade de sangue doado?',
                answer:
                    'Uma pessoa adulta tem, em média, 5 litros de sangue. Em cada doação, o máximo de sangue retirado é de 450 ml.'),
            QuestionAnswerWidget(
                question: 'Quais são os cuidados pós-doação de sangue?',
                answer:
                    'Após a doação de sangue, é necessário ter alguns cuidados, como:\n\n× Evite esforços físicos exagerados por pelo menos 12 horas.\n× Aumente a ingestão de líquidos (água).\n× Não fume por 2 horas.\n× Evite bebidas alcoólicas por 12 horas.\n× Mantenha o curativo no local da punção por, pelo menos, quatro horas.\n× Não dirija veículos de grande porte, não trabalhe em andaimes e não pratique paraquedismo ou mergulho.\n× Faça um pequeno lanche e hidrate-se. É importante que o doador continue se sentindo bem durante o dia em que efetuou a doação de sangue.'),
            QuestionAnswerWidget(
                question: 'É seguro doar sangue?',
                answer:
                    'Sim, doar sangue é totalmente seguro. Não há nenhum risco de contaminação durante a doação de sangue, pois todos os materiais utilizados para doação de sangue são descartáveis e de uso único.'),
            QuestionAnswerWidget(
                question: 'Quanto tempo dura a doação de sangue?',
                answer:
                    'O procedimento todo (cadastro, aferição de sinais vitais, teste de anemia, triagem clínica, coleta do sangue e lanche) leva cerca de 40 minutos.'),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                child: Text('ENVIE SUA DÚVIDA',
                    style: TextStyle(color: Colors.white)),
                color: Colors.red[900],
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget questionItem() {
//   return Card(
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         const ListTile(
//           leading: Icon(
//             Icons.help_outline,
//             color: Colors.red,
//           ),
//           title: Text(
//             'Porque ta coisa acontece?',
//             style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
//           ),
//           trailing: Icon(Icons.keyboard_arrow_down),
//         ),
//         Visibility(
//             visible: true,
//             maintainSize: false,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(30, 5, 10, 15),
//               child: Text(
//                   'Tal coisa acontece por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.por causa disso.'),
//             ))
//       ],
//     ),
//   );
// }
