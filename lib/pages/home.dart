import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:onlineshop/widgets/appbar.dart';

import '../widgets/horizontal_list.dart';
import '../widgets/side_drawer.dart';
import '../widgets/product.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(
        title: 'Online Shop',
      ),
      drawer: SideDrawer(),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          // _carouselSlides(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
            child: Text('Categories'),
          ),
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
            child: Text('Recent Products'),
          ),
          Container(
            // height: MediaQuery.of(context).size.height * 0.72,
            height: 400,
            child: Products(),
          ),
        ],
      ),
    );
  }

  Widget _carouselSlides() {
    return Container(
      height: 200,
      child: Carousel(
        indicatorBgPadding: 5,
        dotSize: 6,
        dotBgColor: Colors.transparent,
        dotIncreasedColor: Colors.green,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        autoplay: false,
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/c1.jpg'),
          AssetImage('assets/images/m1.jpeg'),
          AssetImage('assets/images/m2.jpg'),
          AssetImage('assets/images/w1.jpeg'),
          AssetImage('assets/images/w3.jpeg'),
        ],
      ),
    );
  }
}
