import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  final porcentaje;
  final colorPrimario;
   final colorSegundario;
   final grosorPrimario;
   final grosorSegundario;

  const RadialProgress({@required this.porcentaje,
   this.colorPrimario = Colors.blue,
   this.colorSegundario  = Colors.grey,
    this.grosorPrimario = 10.0,
     this.grosorSegundario= 4.0 });
  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  double porcentajeAnterior;

  @override
  void initState() {
    porcentajeAnterior = widget.porcentaje;
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 200));

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward(from: 0.0);

    final diferenciaAnimar = widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior = widget.porcentaje;

    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          child: CustomPaint(
            painter: _MiRadialProgress((widget.porcentaje - diferenciaAnimar) +
                (diferenciaAnimar * controller.value), 
                widget.colorPrimario , widget.colorSegundario,
                widget.grosorPrimario, widget.grosorSegundario ),
          ),
        );
      },
    );
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentaje;
  final Color  colorPrimario;
  final Color  colorSegundario;
   final double grosorPrimario;
   final double grosorSegundario;

  _MiRadialProgress(this.porcentaje,
   this.colorPrimario,
  this.colorSegundario, 
  this.grosorPrimario, 
  this.grosorSegundario);

  @override
  void paint(Canvas canvas, Size size) {

final rect = new Rect.fromCircle(
  center: Offset(0, 0),
  radius: 180
  );
final Gradient gradiente = new LinearGradient(
  colors :<Color> [
    Color(0xffc012FF),
    Color(0xff6D05E8),
    Colors.red
  ]
  );


    // final porcentaje = 40;
//circulo completado
    final paint = new Paint()
      ..strokeWidth = grosorSegundario
      ..color = colorSegundario
      ..style = PaintingStyle.stroke;

    Offset center = new Offset(size.width * 0.5, size.height / 2);

    double radio = min(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(center, radio, paint);

    //arco

    final paintArco = new Paint()
      ..strokeWidth = grosorPrimario
      // ..color = colorPrimario
      ..shader = gradiente.createShader(rect)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    // parte que se va llenado
    double arcAngle = 2 * pi * (porcentaje / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radio),
     -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
