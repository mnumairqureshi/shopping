import 'package:flutter/material.dart';
import 'package:shopping/data/menu_items.dart';
import 'package:shopping/model/menu_item.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text("Profile"),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 3, offset: Offset(0, 8))
              ],
              image: DecorationImage(
                  image: NetworkImage(
                      "https://assets.website-files.com/5f204aba8e0f187e7fb85a87/5f210a533185e7434d9efcab_hero%20img.jpg"),
                  fit: BoxFit.cover)),
          height: 250,
        ),
        Container(
          padding: EdgeInsets.only(
              top: 165, left: MediaQuery.of(context).size.width * 0.27),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://appsforpcplanet.org/wp-content/uploads/2020/06/whatsapp-dp-2.jpg",
            ),
            radius: 100,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ListTile(
                title: Text(
                  "Name :",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
                subtitle: Text(
                  "Muhammad Numair Qureshi",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                      size: 14,
                    ))),
            Divider(height: 0.1),
            ListTile(
                title: Text(
                  "Email :",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
                subtitle: Text(
                  "abc@yahoo.com",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                      size: 14,
                    ))),
            Divider(height: 0.1),
            ListTile(
                title: Text(
                  "Phone Number :",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
                subtitle: Text(
                  "+92 300 1234567",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                      size: 14,
                    ))),
            Divider(height: 0.1),
            ListTile(
                title: Text(
                  "User ID :",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
                subtitle: Text(
                  "220001",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                      size: 14,
                    ))),
            Divider(
              height: 0.1,
            ),
            ListTile(
                title: Text(
                  "Zip Code :",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
                subtitle: Text(
                  "008817",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                      size: 14,
                    ))),
            SizedBox(
              height: 80,
            )
          ],
        )
      ]),
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
