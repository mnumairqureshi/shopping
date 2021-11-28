import 'package:flutter/material.dart';
import 'package:shopping/cart.dart';
import 'package:shopping/favorite.dart';
import 'package:shopping/forgetpass.dart';
import 'package:shopping/login.dart';
import 'package:shopping/home.dart';
import 'package:shopping/profile.dart';
import 'package:shopping/signup.dart';

void main() {
  runApp(const Material());
}

class Material extends StatelessWidget {
  const Material({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Numair',
        home: const Login(),
        initialRoute: 'login',
        routes: {
          'cart': (context) => Cart(),
          'favorite': (context) => Favorite(),
          'profile': (context) => Profile(),
          'forgetpass': (context) => Forgetpass(),
          'home': (context) => const Home(),
          'login': (context) => const Login(),
          'signup': (context) => const Signup(),
        });
  }
}
