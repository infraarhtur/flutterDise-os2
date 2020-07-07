import 'package:disenios2/src/widgets/slideshow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Slideshow(
      bulletPrimario: 20,
      bulletSecundario: 10,
      puntosArriba: false,
      colorPrimario: Colors.red,
      colorSecundario: Colors.lightBlue,
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
