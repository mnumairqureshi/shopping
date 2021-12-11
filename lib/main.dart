import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping/cart.dart';
import 'package:shopping/favorite.dart';
import 'package:shopping/forgetpass.dart';
import 'package:shopping/login.dart';
import 'package:shopping/home.dart';
import 'package:shopping/profile.dart';
import 'package:shopping/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
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
          'cart': (context) => const Cart(),
          'favorite': (context) => const Favorite(),
          'profile': (context) => const Profile(),
          'forgetpass': (context) => const Forgetpass(),
          'home': (context) => const Home(),
          'login': (context) => const Login(),
          'signup': (context) => const Signup(),
        });
  }
}
