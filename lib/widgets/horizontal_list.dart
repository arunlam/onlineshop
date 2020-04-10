import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      padding: const EdgeInsets.all(0),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: cateList,
      ),
    );
  }
}

final cateList = [
  Category(
      imageLocation: 'assets/images/cats/tshirt.png', imageCaption: 'T-Shirts'),
  Category(
      imageLocation: 'assets/images/cats/dress.png', imageCaption: 'Dress'),
  Category(
      imageLocation: 'assets/images/cats/jeans.png', imageCaption: 'Jeans'),
  Category(
      imageLocation: 'assets/images/cats/formal.png', imageCaption: 'Formal'),
  Category(
      imageLocation: 'assets/images/cats/informal.png',
      imageCaption: 'Informal'),
  Category(imageLocation: 'assets/images/cats/shoe.png', imageCaption: 'Shoes'),
  Category(
      imageLocation: 'assets/images/cats/accessories.png',
      imageCaption: 'Accessories'),
];

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  const Category({Key key, this.imageLocation, this.imageCaption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                child: Image.asset(imageLocation, width: 36, height: 36),
              ),
              Text(imageCaption)
            ],
          ),
        ),
        // child: Container(

        //   width: 60,
        //   child: ListTile(
        //     title: Image.asset(imageLocation, width: 64, height: 64),
        //     subtitle: Container(
        //         alignment: Alignment.topCenter, child: Text(imageCaption)),
        //   ),
        // ),
      ),
    );
  }
}
