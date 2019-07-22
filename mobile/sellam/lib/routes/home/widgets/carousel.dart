import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class AppCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/carousel1.jpg'),
            AssetImage('assets/carousel2.png'),
            AssetImage('assets/carousel6.jpg'),
            AssetImage('assets/carousel3.jpg'),
            AssetImage('assets/carousel5.jpg'),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 4.0,),
    );
  }
}

Widget imageCarousel = new Container(
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/carousel1.jpg'),
          AssetImage('assets/carousel2.jpg'),
          AssetImage('assets/carousel6.jpg'),
          AssetImage('assets/carousel3.jpg'),
          AssetImage('assets/carousel5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );
