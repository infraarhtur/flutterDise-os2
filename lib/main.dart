// import 'package:disenios2/src/labs/animaciones_page.dart';
// import 'package:disenios2/src/labs/circula_progres_page.dart';
// import 'package:disenios2/src/pages/graficas_circulares_page.dart';
// import 'package:disenios2/src/pages/headers_page.dart';
// import 'package:disenios2/src/labs/slideshow_page.dart';
// import 'package:disenios2/src/retos/cuadrado_animado.dart';
// import 'package:disenios2/src/pages/slideshow_page.dart';
//import 'package:disenios2/src/pages/pinterest_page.dart';
import 'package:disenios2/src/pages/emergency_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños 2',
       home: EmergencyPage()
    );
  }
}