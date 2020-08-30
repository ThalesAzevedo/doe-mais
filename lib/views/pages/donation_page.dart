import 'package:doe_mais/models/bloodCenter.dart';
import 'package:doe_mais/models/user.dart';
import 'package:doe_mais/views/components/blood_stock.dart';
import 'package:doe_mais/views/components/wave.dart';
import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = User(subscription: []);
    var isLoading = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Para DOAR...'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.red[900],
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Tenha uma boa noite de sono.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Durma pelo menos 6 horas no dia da doação.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Tome um bom café da manhã.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Não vá em jejum, mas também não coma nada gorduroso.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 40),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Vá ao banco de sangue da sua cidade.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      isLoading
                          ? CircularProgressIndicator()
                          : Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.location_city,
                                        color: Colors.white),
                                    Text(
                                      '  ${bloodCenter.name}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(Icons.place, color: Colors.white),
                                    Text(
                                      '  ${bloodCenter.address} - ${bloodCenter.city}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.access_time,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '  Coleta: ${bloodCenter.attendance[0]}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                    ],
                  ),
                ),
              ],
            ),
          ),
          WaveWidget(),
          isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : BloodStock(user, bloodCenter),
        ],
      ),
    );
  }
}
