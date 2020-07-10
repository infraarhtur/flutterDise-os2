import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BotonGordo extends StatelessWidget {
  final IconData icon;
  final String texto;
  final Color color1, color2;
  final Function onPress;

  const BotonGordo(
      {this.icon = FontAwesomeIcons.circle,
      @required this.texto,
      this.color1 = Colors.grey,
      this.color2 = Colors.blueGrey,
      @required this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onPress,
          child: Stack(
        children: <Widget>[
          _botonGordoBackground(this.icon, this.color1,this.color2,onPress),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 140,
                width: 40,
              ),
              FaIcon(
                this.icon,
                color: Colors.white,
                size: 40,
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                  child: Text(this.texto,
                      style: TextStyle(color: Colors.white, fontSize: 18))),
              FaIcon(FontAwesomeIcons.arrowRight, color: Colors.white),
              SizedBox(
                width: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}

class _botonGordoBackground extends StatelessWidget {
  final IconData icon;

  final Color color1, color2;
  final Function onPress;

  const _botonGordoBackground(
      this.icon, this.color1, this.color2, this.onPress);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: <Widget>[
            Positioned(
                right: -20,
                top: -20,
                child: FaIcon(
                  this.icon,
                  size: 150,
                  color: Colors.white.withOpacity(0.2),
                ))
          ],
        ),
      ),
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.2), offset: Offset(4, 6))
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: <Color>[this.color1, this.color2])),
    );
  }
}
