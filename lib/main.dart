import 'package:ck_login/UI/home_page/home_page.dart';
import 'package:ck_login/constants.dart';
import 'package:flutter/material.dart';

import 'UI/home_page/home_page.dart';
import 'UI/settings_page/settings_page.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Keeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: CustomColors.scaffoldBackgroundColor,
        primaryColor: Color(0xFF385AD3),
        primaryColorBrightness: Brightness.light,
        tabBarTheme: TabBarTheme(
          labelColor: CustomColors.white,
          labelStyle: TextStyle(fontSize: 16),
          unselectedLabelColor: CustomColors.white.withOpacity(0.55),
          unselectedLabelStyle: TextStyle(fontSize: 16),
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(border: Border()),
        ),
        bottomAppBarTheme: BottomAppBarTheme(
          color: CustomColors.scaffoldBackgroundColor,
          elevation: 0,
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: <Widget>[
          Homepage(),
          Homepage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _bottomNavigationBar() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Theme.of(context).bottomAppBarTheme.color,
          currentIndex: currentPageIndex,
          items: [
            BottomNavigationBarItem(
              title: Container(),
              icon: Icon(
                Icons.home,
                color: Color(0xFF3F3F4B),
              ),
              activeIcon: Icon(
                Icons.home,
                color: Color(0xFF385AD3),
              ),
            ),
            BottomNavigationBarItem(
              title: Container(),
              icon: Icon(
                Icons.home,
                color: Color(0xFF3F3F4B),
              ),
              activeIcon: Icon(
                Icons.home,
                color: Color(0xFF385AD3),
              ),
            ),
            BottomNavigationBarItem(
              title: Container(),
              icon: Icon(
                Icons.settings,
                color: Color(0xFF3F3F4B),
              ),
              activeIcon: Icon(
                Icons.settings,
                color: Color(0xFF385AD3),
              ),
            ),
          ],
          onTap: (int) {
            setState(() {
              currentPageIndex = int;
              pageController.jumpToPage(int);
            });
          },
        ),
      ],
    );
  }
}
