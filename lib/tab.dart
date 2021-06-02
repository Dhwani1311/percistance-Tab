
import 'package:flutter/material.dart';

class TabNavigatorRoutes {

  static const String root = '/';
  static const String detail = '/detail';

}

class TabNavigator extends StatelessWidget {

  TabNavigator({this.Key, this.tabItem});
  final GlobalKey<NavigatorState> Key;
  final String tabItem;

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (tabItem == "Page1")
      child = Page1();

    else if (tabItem == "Page2")
      child = Page2();

    else if (tabItem == "Page3")
      child = Page3();

    return Navigator(
      key: Key,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}

class Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text("Press for Page1",style: TextStyle(fontSize: 20),),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
      ),
    );
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text("Press for Page2",style: TextStyle(fontSize: 20),),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
      ),
    );
  }
}

class Page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: TextButton(
        child: Text("Press for Page3",style: TextStyle(fontSize: 20),),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        },
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Tab Bar"),),
      body:  Center(child: Text("Welcome to HomePage",style: TextStyle(fontSize: 20),)),
    );
  }
}
