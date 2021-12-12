import 'package:flutter/material.dart';
import 'package:shopping/data/menu_items.dart';
import 'package:shopping/model/menu_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<String> navBarItem = [
    "Apple",
    "Google",
    "Coca Cola	",
    "Microsoft",
    "Toyota",
    "Samsung",
    "Amazon",
    "Mercedes Benz",
    "McDonald s",
    "Facebook"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [
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
          ),
        ], title: Text("Welcome")),
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
                title:
                    Text("New Sign Up", style: TextStyle(color: Colors.blue)),
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
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text("Top Searching Brands:",
                      style: TextStyle(
                          decorationStyle: TextDecorationStyle.dashed,
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
              // Container(height: 50, color: Colors.red),
              Container(height: 10, color: Colors.white),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: 40,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: navBarItem.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 0),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              color: Colors.blue,
                              child: Center(
                                child: Text(
                                  navBarItem[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            );
                          },
                        )),
                    Container(
                      child: Stack(
                        children: [
                          Positioned(
                              child: CircleAvatar(
                            backgroundColor: Colors.blue,
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
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
