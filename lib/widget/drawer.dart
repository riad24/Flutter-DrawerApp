import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Riad Hossain"),
            accountEmail: new Text("riadhossain@gmail.com"),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new ExactAssetImage('assets/images/profile1.png'),
                fit: BoxFit.cover,
              ),
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/21232813?s=460&u=1d72d7e3138edd6eb0c3d0d46182c3b695c88c6b&v=4')),
          ),          _createDrawerItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/home1')),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home 2',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/home2')),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home 3',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/home3')),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home 4',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/home3')),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home 5',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/home3')),
          _createDrawerItem(
              icon: Icons.home,
              text: 'Home 6',
              onTap: () =>
                  Navigator.pushReplacementNamed(context, '/home3')),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('res/images/drawer_header_background.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Flutter Step-by-Step",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
