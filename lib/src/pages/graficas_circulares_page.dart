import 'package:disenios2/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';

class GraficasCircularesPage extends StatefulWidget {
  @override
  _GraficasCircularesPageState createState() => _GraficasCircularesPageState();
}

class _GraficasCircularesPageState extends State<GraficasCircularesPage> {
  double porcentaje = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: (){
          setState(() {
            porcentaje += 10;
            if(porcentaje > 100){
              porcentaje =0;
            }
          });
        },
        ),
      body: Column(

mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
              CustomRadialProgress(porcentaje: porcentaje,coloPrincipal: Colors.red,),
          CustomRadialProgress(porcentaje: porcentaje,coloPrincipal: Colors.green)
          ],
        ),

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
              CustomRadialProgress(porcentaje: porcentaje ,coloPrincipal: Colors.limeAccent),
          CustomRadialProgress(porcentaje: porcentaje,coloPrincipal: Colors.purpleAccent)
          ],
        )

        ],
      ),
      
    );
  }
}

class CustomRadialProgress extends StatelessWidget {
  const CustomRadialProgress({
    Key key,
    @required this.porcentaje,
    @required this.coloPrincipal
  }) ;

  final double porcentaje;
  final Color coloPrincipal;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      // color: Colors.red,
      child: RadialProgress(porcentaje:porcentaje, colorPrimario: coloPrincipal, colorSegundario: Colors.grey, grosorPrimario: 10.0, grosorSegundario: 4.0,)
      );
  }
}