import 'package:doe_mais/views/components/wave.dart';
import 'package:doe_mais/views/pages/donation_page.dart';
import 'package:doe_mais/views/pages/doubts_page.dart';
import 'package:flutter/material.dart';

class WhyDonate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red[900],
      appBar: AppBar(
        title: Text('Porque devo DOAR?'),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red[900],
            height: MediaQuery.of(context).size.height * 0.8,
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                    ),
                    Icon(
                      Icons.looks_one,
                      size: 50,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        'Você pode ajudar a salvar outras pessoas.',
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.looks_two,
                      size: 50,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        'Não dói e incomoda menos que uma injeção.',
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(width: 60)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                    ),
                    Icon(
                      Icons.looks_3,
                      size: 50,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        'É rápido! Todo processo é menos de 45 minutos.',
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.looks_4,
                      size: 50,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        'Normalmente, tem um lanche no final.',
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(width: 60)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                    ),
                    Icon(
                      Icons.looks_5,
                      size: 50,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Text(
                        'Você ganha um dia de folga no trabalho.',
                        overflow: TextOverflow.clip,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                RaisedButton.icon(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Donation(),
                      ),
                    ),
                  },
                  icon: Icon(
                    Icons.thumb_up,
                    color: Colors.red[900],
                  ),
                  label: Text(
                    'AGORA QUERO DOAR',
                    style: TextStyle(
                      color: Colors.red[900],
                    ),
                  ),
                ),
                RaisedButton.icon(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Doubts(),
                      ),
                    ),
                  },
                  icon: Icon(
                    Icons.help,
                    color: Colors.red[900],
                  ),
                  label: Text(
                    'QUERO SABER MAIS',
                    style: TextStyle(
                      color: Colors.red[900],
                    ),
                  ),
                ),
              ],
            ),
          ),
          WaveWidget(),
        ],
      ),
    );
  }
}
