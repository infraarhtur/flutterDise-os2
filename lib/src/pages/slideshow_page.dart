import 'package:disenios2/src/theme/theme.dart';
import 'package:disenios2/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SlideshowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child: MiSlideShow()),
            Expanded(child: MiSlideShow())
          ],
        ),
      ),
    );
  }
}

class MiSlideShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChanger>(context);
    final accentColor= appTheme.currentTheme.accentColor;
    return Slideshow(
      bulletPrimario: 20,
      bulletSecundario: 10,
      puntosArriba: false,
      colorPrimario:Colors.red,
      colorSecundario: (appTheme.darkTheme)? accentColor: Colors.red,
      slides: <Widget>[
        SvgPicture.asset('assets/svgs/slide-1.svg'),
        SvgPicture.asset('assets/svgs/slide-2.svg'),
        SvgPicture.asset('assets/svgs/slide-3.svg'),
        SvgPicture.asset('assets/svgs/slide-4.svg'),
        SvgPicture.asset('assets/svgs/slide-5.svg')
      ],
    );
  }
}
