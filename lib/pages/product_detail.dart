import 'package:flutter/material.dart';
import 'package:onlineshop/widgets/product_similar.dart';
import '../widgets/appbar.dart';

class ProductDetail extends StatefulWidget {
  final String name;
  final String picture;
  final String oldPrice;
  final String price;

  const ProductDetail(
      {Key key, this.name, this.picture, this.oldPrice, this.price})
      : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars(
        title: widget.name,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300,
            child: GridTile(
              child: Hero(
                tag: Text('Hero 1'),
                child: Container(
                  color: Colors.white,
                  child: Image.asset(
                    widget.picture,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              footer: Container(
                color: Colors.white24,
                child: ListTile(
                  leading: Text(
                    widget.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.green),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          '\$${widget.oldPrice}',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '\$${widget.price}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Select your size'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Size')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Select your color'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Color')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('how many you want?'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('Close'),
                              ),
                            ],
                          );
                        });
                  },
                  elevation: 0.2,
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Qty')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  elevation: 0.2,
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('Buy now'),
                ),
              ),
              MaterialButton(
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
              MaterialButton(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product Details'),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Container(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: Text('Product Name:',
                      style: TextStyle(color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.name),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: Text('Brand:', style: TextStyle(color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Zara X'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: Text('Product Condition:',
                      style: TextStyle(color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('New Arrival'),
              ),
            ],
          ),
          Container(
            height: 360,
            child: SimilarProducts(),
          ),
        ],
      ),
    );
  }
}
