// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:disenios2/src/labs/slideshow_page.dart';
import 'package:disenios2/src/pages/emergency_page.dart';
import 'package:disenios2/src/pages/graficas_circulares_page.dart';
import 'package:disenios2/src/pages/headers_page.dart';
import 'package:disenios2/src/pages/pinterest_page.dart';
import 'package:disenios2/src/pages/sliver_list_page.dart';
import 'package:disenios2/src/retos/cuadrado_animado.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final pageRoutes = <_Route>[
_Route(FontAwesomeIcons.slideshare, "Slideshow", SlideShowPage()),
_Route(FontAwesomeIcons.ambulance, "Emergencia", EmergencyPage()),
_Route(FontAwesomeIcons.heading, "Encabezados", HeadersPages()),
_Route(FontAwesomeIcons.peopleCarry, "Cuadro animado", CuadradoAnimadoPage()),
_Route(FontAwesomeIcons.circleNotch, "Barra progreso", GraficasCircularesPage()),
 _Route(FontAwesomeIcons.pinterest, "Pinterest", PinterestPage()),
_Route(FontAwesomeIcons.mobile, "slivers", SliverListPage()),
];
class _Route{
  final IconData icon;
  final String title;
  final Widget page;

  _Route(this.icon, this.title, this.page);
}