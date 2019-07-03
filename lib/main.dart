import 'package:flutter/material.dart';
import 'demo/basic_demo.dart';
import 'demo/bottom_navigation_bar.dart';
import 'demo/drawer_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'model/post.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigatorDemo(),
      theme: ThemeData(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              SliverDemo(),
            ],
          ),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo()),
    );
  }
}
