import 'package:flutter/material.dart';
import 'package:onlineshop/pages/cart.dart';
import 'package:onlineshop/pages/home.dart';

class AppBars extends StatefulWidget implements PreferredSizeWidget {
  final String title;

  const AppBars({Key key, this.title}) : super(key: key);
  @override
  _AppBarsState createState() => _AppBarsState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppBarsState extends State<AppBars> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.green,
      title: InkWell(
        child: Text(widget.title),
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Home()));
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart, color: Colors.white),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Cart()));
          },
        ),
      ],
    );
  }
}
