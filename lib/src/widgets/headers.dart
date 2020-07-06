import 'package:flutter/material.dart';
class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondiados extends StatelessWidget {
  const HeaderBordesRedondiados({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
     

      decoration: BoxDecoration(
        color:Color(0xff615AAB),
        borderRadius:BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(30),
        )
      ),
    );
  }
}


class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width:  double.infinity,
      
        child: CustomPaint(
          painter:_HeaderDiagonalPainter() ,
        ),
      );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    lapiz.color= Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10;

    final path = new Path();

    // dibujar con el path y  el  lapiz
    path.moveTo(0, size.height *0.35);
    path.lineTo(size.width, size.height *0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height *0.5);
    canvas.drawPath(path, lapiz);



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }
}


class HeaderTriangular extends StatelessWidget {
  const HeaderTriangular({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width:  double.infinity,
      
        child: CustomPaint(
          painter:_HeaderTriangularPainter() ,
        ),
      );
  }
}



class _HeaderTriangularPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    lapiz.color= Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10;

    final path = new Path();

    // dibujar con el path y  el  lapiz
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height *0.5);
    canvas.drawPath(path, lapiz);



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }
}



class HeaderPico extends StatelessWidget {
  const HeaderPico({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width:  double.infinity,
      
        child: CustomPaint(
          painter:_HeaderPicoPainter() ,
        ),
      );
  }
}



class _HeaderPicoPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    lapiz.color= Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10;

    final path = new Path();

    // dibujar con el path y  el  lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height *0.20);
      path.lineTo(size.width *0.5, size.height *0.28);
         path.lineTo(size.width , size.height *0.20);
         path.lineTo(size.width , 0);
    // path.lineTo(0, size.height *0.5);
    canvas.drawPath(path, lapiz);



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }
}


class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width:  double.infinity,
      
        child: CustomPaint(
          painter:_HeaderCurvoPainter() ,
        ),
      );
  }
}



class _HeaderCurvoPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final lapiz = Paint();
    lapiz.color= Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10;

    final path = new Path();

    // dibujar con el path y  el  lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height *0.20);
    path.quadraticBezierTo(size.width *0.5, size.height *0.4, size.width, size.height *0.25);
       path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }
}



class HeaderOla extends StatelessWidget {
  const HeaderOla({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width:  double.infinity,
      
        child: CustomPaint(
          painter:_HeaderOlaPainter() ,
        ),
      );
  }
}



class _HeaderOlaPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

final Rect rect  = new Rect.fromCircle(
  center: Offset(150.0, 200.0),
  radius: 180
);

final Gradient gradiente = new LinearGradient(
 begin: Alignment.topCenter,
 end: Alignment.bottomCenter,
  colors: <Color>[
    Color(0xff6D05E8),
   Color(0xff6C012ff),
      Color(0xff6D05FA),
  ],
  stops: [
    0.0,
    0.5,
    1.0
  ]
  
  );


    final lapiz = Paint()..shader= gradiente.createShader(rect);
    // lapiz.color= Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 10;

    final path = new Path();

    // dibujar con el path y  el  lapiz
    path.moveTo(0, 0);
    path.lineTo(0, size.height *0.20);
    path.quadraticBezierTo(size.width *0.25, size.height *0.30, size.width*0.5, size.height *0.25);
     path.quadraticBezierTo(size.width *0.75, size.height *0.20, size.width, size.height *0.25);
        path.lineTo(size.width, 0);
    canvas.drawPath(path, lapiz);



  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }
}