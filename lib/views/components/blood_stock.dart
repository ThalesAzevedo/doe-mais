import 'package:doe_mais/models/bloodCenter.dart';
import 'package:doe_mais/models/user.dart';
import 'package:doe_mais/views/components/wave.dart';
import 'package:flutter/material.dart';
import 'blood_level.dart';

class BloodStock extends StatelessWidget {
  User user;
  BloodCenter bloodCenter;

  BloodStock(this.user, this.bloodCenter);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            WaveWidget(),
            Text(
              'Banco de Sangue',
              style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '(${bloodCenter.city})',
              style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Bloodlevel(
                    bloodtype: 'A+', bloodlevel: bloodCenter.bloodstock['A+']),
                Bloodlevel(
                  bloodtype: 'B+',
                  bloodlevel: bloodCenter.bloodstock['B+'],
                ),
                Bloodlevel(
                  bloodtype: 'O+',
                  bloodlevel: bloodCenter.bloodstock['O+'],
                ),
                Bloodlevel(
                  bloodtype: 'AB+',
                  bloodlevel: bloodCenter.bloodstock['AB+'],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Bloodlevel(
                  bloodtype: 'A-',
                  bloodlevel: bloodCenter.bloodstock['A-'],
                ),
                Bloodlevel(
                  bloodtype: 'B-',
                  bloodlevel: bloodCenter.bloodstock['B-'],
                ),
                Bloodlevel(
                  bloodtype: 'O-',
                  bloodlevel: bloodCenter.bloodstock['O-'],
                ),
                Bloodlevel(
                  bloodtype: 'AB-',
                  bloodlevel: bloodCenter.bloodstock['AB-'],
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                child: Text(
                  'ME NOTIFIQUE QUANDO PRECISAREM',
                  style: TextStyle(color: Colors.white),
                ),
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
