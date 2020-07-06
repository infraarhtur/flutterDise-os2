import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class CircularPogressPage extends StatefulWidget {
  @override
  _CircularPogressPageState createState() => _CircularPogressPageState();
}

class _CircularPogressPageState extends State<CircularPogressPage> with SingleTickerProviderStateMixin {
AnimationController controller;




double porcentaje = 0.0;
double nuevoPorcentaje = 0.0;

  @override

@override
void initState() { 
  controller = new AnimationController(vsync: this, duration: Duration(milliseconds: 800));
 
 controller.addListener(() {
  //  print('valor controller: ${controller.value}');
  
  setState(() {
    porcentaje= lerpDouble(porcentaje, nuevoPorcentaje, controller.value);
  });
 });
 
 
  super.initState();
  
}


  Widget build(BuildContext context) {
   
    return Scaffold(

       floatingActionButton: FloatingActionButton(
        
       child:Icon(Icons.refresh),
       backgroundColor: Colors.pink,
        onPressed:(){


          porcentaje = nuevoPorcentaje;
          nuevoPorcentaje += 10;
          if(nuevoPorcentaje > 100){
            nuevoPorcentaje = 0 ;
porcentaje = 0;
          }
          controller.forward(from: 0.0);
          setState((){});
        },
     
     
    
    ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          width: 300,
          height: 300,
          // color: Colors.red,
          child: CustomPaint(
            painter: _MiRadialProgress(porcentaje),
          ),
        ),
      ),
    );
  }
}

class _MiRadialProgress extends CustomPainter {


final porcentaje;
_MiRadialProgress(this.porcentaje);

  @override
  void paint(Canvas canvas, Size size) {
    // final porcentaje = 40;
//circulo completado
    final paint = new Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    Offset center = new Offset(size.width * 0.5, size.height / 2);

    double radio = min(size.width * 0.5, size.height * 0.5);
    canvas.drawCircle(center, radio, paint);

    //arco

    final paintArco = new Paint()
      ..strokeWidth = 10
      ..color = Colors.pink
      ..style = PaintingStyle.stroke;

      // parte que se va llenado 
      double arcAngle = 2 * pi * (porcentaje / 100);
      canvas.drawArc(
        Rect.fromCircle(center:center,radius: radio), 
        -pi/2,
         arcAngle,
          false,
           paintArco);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
