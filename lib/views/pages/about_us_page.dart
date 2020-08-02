import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre nós'),
      ),
      body: Center(
        child: Text('Criado por Thales Azevedo - 2020'),
      ),
    );
  }
}
