import 'package:flutter/material.dart';
import 'package:shopping/data/menu_items.dart';
import 'package:shopping/model/menu_item.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wel Come to Cart"),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pushNamed(context, 'notification');
              },
              icon: Icon(Icons.notifications)),
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuItems.itemFirst.map(buildItem).toList(),
              PopupMenuDivider(),
              ...MenuItems.itemSecond.map(buildItem).toList(),
            ],
          )
        ],
      ),
    );
  }

  PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
      value: item,
      child: Row(
        children: [
          Icon(
            item.icon,
            color: Colors.blue,
          ),
          Text(
            item.text,
            style: TextStyle(
              color: Colors.blue,
            ),
          )
        ],
      ));
  void onSelected(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.itemHome:
        Navigator.pushNamed(context, 'home');
        break;
    }
    switch (item) {
      case MenuItems.itemProfile:
        Navigator.pushNamed(context, 'profile');
        break;
    }

    switch (item) {
      case MenuItems.itemFavorite:
        Navigator.pushNamed(context, 'favorite');
        break;
    }
    switch (item) {
      case MenuItems.itemSignout:
        Navigator.pushNamed(context, 'login');
        break;
    }
    switch (item) {
      case MenuItems.itemCart:
        Navigator.pushNamed(context, 'cart');
        break;
    }
  }
}
