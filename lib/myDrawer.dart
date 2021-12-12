import 'package:flutter/material.dart';
import 'myDrawer.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  "https://appsforpcplanet.org/wp-content/uploads/2020/06/whatsapp-dp-2.jpg"),
            ),
            DrawerHeader(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                accountName: Text(
                  "Muhammad Numair Qureshi",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "numair_qureshi@yahoo.com",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onDetailsPressed: () {},
                arrowColor: Colors.blue,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text("Home", style: TextStyle(color: Colors.blue)),
              trailing: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'home');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              title: Text("Profile", style: TextStyle(color: Colors.blue)),
              trailing: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'profile');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
              title: Text("Cart", style: TextStyle(color: Colors.blue)),
              trailing: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'cart');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.blue,
              ),
              title: Text("Favorite", style: TextStyle(color: Colors.blue)),
              trailing: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'favorite');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.login,
                color: Colors.blue,
              ),
              title: Text("New Sign Up", style: TextStyle(color: Colors.blue)),
              trailing: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pushNamed(context, 'signup');
              },
            ),
            Divider(),
            SizedBox(height: 125),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.blue,
                ),
                title: Text("Logout", style: TextStyle(color: Colors.blue)),
                trailing: Icon(
                  Icons.arrow_forward_sharp,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'login');
                },
              ),
            )),
          ],
        ),
      ),
    );
  }
}
