import 'package:flutter/material.dart';

class WaveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        color: Colors.red[900],
        width: screenSize.width,
        height: 50,
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(size.width * 0, size.height - 25);
    path.quadraticBezierTo(
        size.width * 0.1, size.height, size.width * 0.2, size.height - 25);
    path.quadraticBezierTo(
        size.width * 0.3, size.height - 50, size.width * 0.4, size.height - 25);
    path.quadraticBezierTo(
        size.width * 0.5, size.height, size.width * 0.6, size.height - 25);
    path.quadraticBezierTo(
        size.width * 0.7, size.height - 50, size.width * 0.8, size.height - 25);
    path.quadraticBezierTo(
        size.width * 0.9, size.height, size.width, size.height - 25);
    path.lineTo(size.width, -5);
    // path.lineTo(0, -5);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
