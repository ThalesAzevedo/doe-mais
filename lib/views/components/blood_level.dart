import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Bloodlevel extends StatelessWidget {
  final String bloodtype;
  final int bloodlevel;
  List<String> labelLevel = ['', 'Crítico', 'Alerta', 'Satisfatório'];

  Bloodlevel({Key key, this.bloodtype, this.bloodlevel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: FlareActor(
                    "assets/BloodLevel.flr",
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    animation: bloodlevel.toString(),
                  ),
                ),
                Text(
                  labelLevel[bloodlevel],
                  style: TextStyle(
                    color: Colors.red[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              bloodtype,
              style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
