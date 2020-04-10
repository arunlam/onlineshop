import 'package:flutter/material.dart';

import 'home.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.green,
        title: InkWell(
          child: Text('Cart'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
      body: Container(),
      bottomNavigationBar: Container(
        color: Colors.grey[200],
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text('Total',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('\$299', style: TextStyle(color: Colors.green)),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Check out',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
