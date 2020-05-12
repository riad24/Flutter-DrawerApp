import 'package:flutter/material.dart';
import 'package:flutterdrawerapp/widget/drawer.dart';


class HomePage1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Home2"),
            ),
        drawer: AppDrawer(),
        body: Center(
            child: Text("Home Page2")
        )
    );
  }

}