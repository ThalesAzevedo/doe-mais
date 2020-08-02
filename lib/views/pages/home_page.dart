import 'package:doe_mais/views/components/drawer_config.dart';
import 'package:doe_mais/views/components/wave.dart';
import 'package:doe_mais/views/pages/donation_page.dart';
import 'package:doe_mais/views/pages/why_donate_page.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DrawerConfig(),
      appBar: AppBar(
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(300),
          child: Container(
            width: 300,
            height: 300,
            child: FlareActor("assets/LogoDoeMais.flr",
                alignment: Alignment.center,
                fit: BoxFit.contain,
                animation: "1"),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          WaveWidget(),
          Spacer(),
          RaisedButton.icon(
            color: Colors.red[900],
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
              Icons.invert_colors,
              color: Colors.white,
            ),
            label: Text(
              'QUERO SER UM DOADOR!',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Text('ou'),
          RaisedButton.icon(
            color: Colors.red[900],
            padding: EdgeInsets.all(10),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WhyDonate(),
                ),
              ),
            },
            icon: Icon(
              Icons.access_time,
              color: Colors.white,
            ),
            label: Text(
              'PORQUE DOAR SANGUE?',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
