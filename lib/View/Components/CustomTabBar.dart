import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zootracker/View/Trilhas/TrilhasView.dart';
import 'package:zootracker/main.dart';

class CustomTabBar extends StatefulWidget {
  CustomTabBar({Key key}) : super(key: key);

  @override
  CustomTabBarState createState() => CustomTabBarState();
}

class CustomTabBarState extends State<CustomTabBar> {
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.list), title: Text("Trilhas")),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera), title: Text("Câmera")),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text("Pesquisa")),
          BottomNavigationBarItem(
              icon: Icon(Icons.more), title: Text("Feedback")),
        ]),
        tabBuilder: (context, index) {
          if (index == 0) {
            return CupertinoTabView(
              navigatorKey: firstTabNavKey,
              builder: (BuildContext context) => TrilhasView(),
            );
          } else if (index == 1) {
            return CupertinoTabView(
              navigatorKey: secondTabNavKey,
              builder: (BuildContext context) => TrilhasView(),
            );
          } else if (index == 2) {
            return CupertinoTabView(
              navigatorKey: thirdTabNavKey,
              builder: (BuildContext context) => TrilhasView(),
            );
          } else if (index == 3) {
            return CupertinoTabView(
              navigatorKey: fourthTabNavKey,
              builder: (BuildContext context) => TrilhasView(),
            );
          } else {
            return CupertinoTabView(
              navigatorKey: fifthTabNavKey,
              builder: (BuildContext context) => TrilhasView(),
            );
          }
        });
  }
}
