import 'package:doe_mais/models/user.dart';
import 'package:doe_mais/views/pages/about_us_page.dart';
import 'package:doe_mais/views/pages/donation_page.dart';
import 'package:doe_mais/views/pages/doubts_page.dart';
import 'package:doe_mais/views/pages/profile_page.dart';
import 'package:doe_mais/views/pages/why_donate_page.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class DrawerConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = User(
      name: 'Thales C. Azevedo',
      userAvatar:
          'https://www.pinclipart.com/picdir/middle/148-1486972_mystery-man-avatar-circle-clipart.png',
    );
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.red[900]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 70,
                  child: FlareActor("assets/LogoDoeMais.flr",
                      alignment: Alignment.center,
                      fit: BoxFit.contain,
                      animation: "1"),
                ),
                user.loggedIn // Conditinal to verify user login.
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(user.userAvatar),
                          ),
                          Text(
                            user.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserProfile()));
                            },
                          ),
                        ],
                      )
                    : RaisedButton.icon(
                        icon: Icon(Icons.person_add, color: Colors.white),
                        label: Text(
                          'Entrar',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: null,
                      ),
              ],
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.red[900],
              ),
              title: Text('Início'),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(
                Icons.accessibility_new,
                color: Colors.red[900],
              ),
              title: Text('Porque Doar'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WhyDonate()));
              }),
          ListTile(
              leading: Icon(
                Icons.opacity,
                color: Colors.red[900],
              ),
              title: Text('Como doar sangue'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Donation()));
              }),
          ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.red[900],
              ),
              title: Text('Dúvidas Frequentes'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Doubts()));
              }),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.red[900],
            ),
            title: Text('Sobre nós'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
          ),
        ],
      ),
    );
  }
}
