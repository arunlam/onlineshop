import 'package:flutter/material.dart';
import '../pages/product_detail.dart';

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var productList = [
    {
      "name": "Red Dress",
      "picture": "assets/images/products/dress1.jpeg",
      "old_price": "180",
      "price": "120"
    },
    {
      "name": "Skirt 1",
      "picture": "assets/images/products/skt1.jpeg",
      "old_price": "99",
      "price": "69"
    },
    {
      "name": "Skirt 2",
      "picture": "assets/images/products/skt2.jpeg",
      "old_price": "75",
      "price": "61.99"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return SimilarSingleProduct(
          name: productList[index]['name'],
          picture: productList[index]['picture'],
          oldPrice: productList[index]['old_price'],
          price: productList[index]['price'],
        );
      },
    );
  }
}

class SimilarSingleProduct extends StatelessWidget {
  final String name;
  final String picture;
  final String oldPrice;
  final String price;

  SimilarSingleProduct({this.name, this.picture, this.oldPrice, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text('Hero 1'),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetail(
                      name: name,
                      price: price,
                      oldPrice: oldPrice,
                      picture: picture,
                    ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  title: Text(
                    "\$$price",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.red,
                    ),
                  ),
                  subtitle: Text(
                    '\$$oldPrice',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.asset(picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}
