import 'package:flutter/material.dart';
import 'package:shopping/model/menu_item.dart';

class MenuItems {
  static const List<MenuItem> itemFirst = [itemHome, itemProfile, itemFavorite, itemCart];

  static const List<MenuItem> itemSecond = [
    itemSignout,
  ];
  static const itemHome = MenuItem(
    text: "Home",
    icon: Icons.home,
  );
  static const itemProfile = MenuItem(text: "Profile", icon: Icons.person);
  static const itemFavorite = MenuItem(text: "Favorite", icon: Icons.favorite);
  static const itemCart = MenuItem(text: "Cart", icon: Icons.shopping_cart);
  static const itemSignout = MenuItem(text: "Sign Out", icon: Icons.logout);
}
