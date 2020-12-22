import 'package:ck_login/constants.dart';
import 'package:flutter/material.dart';

import 'UI/settings_page/settings_page.dart';

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
        primaryColorBrightness: Brightness.light,

        tabBarTheme: TabBarTheme(
          labelColor: CustomColors.white,
          labelStyle:
          TextStyle(fontSize: 16),
          unselectedLabelColor: CustomColors.white.withOpacity(0.55),

          unselectedLabelStyle:
          TextStyle(fontSize: 16),
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(border: Border()),
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
  @override
  Widget build(BuildContext context) {
    return SettingsPage() ;
  }
}
