import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.5,
      child: new ListView(
        children: <Widget>[
          //Header
          new UserAccountsDrawerHeader(
            accountName: Text('Arun Lam'),
            accountEmail: Text('arunlam2891@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
            decoration: BoxDecoration(color: Colors.green),
          ),
          InkWell(
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home, color: Colors.green),
              onTap: () {},
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(Icons.person, color: Colors.green),
              onTap: () {},
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Orders'),
              leading: Icon(Icons.shopping_basket, color: Colors.green),
              onTap: () {},
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Gridview'),
              leading: Icon(Icons.dashboard, color: Colors.green),
              onTap: () {},
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Bookmarks'),
              leading: Icon(Icons.bookmark, color: Colors.green),
              onTap: () {},
            ),
          ),
          Divider(),
          InkWell(
            child: ListTile(
              title: Text('Setting'),
              leading: Icon(Icons.settings, color: Colors.grey),
              onTap: () {},
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.info, color: Colors.grey),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
