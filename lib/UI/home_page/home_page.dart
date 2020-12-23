import 'package:ck_login/UI/accepted_page/accepted_page.dart';
import 'package:ck_login/UI/all_page/all_page.dart';
import 'package:ck_login/UI/declined_page/declined_page.dart';
import 'package:ck_login/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  final tabs = [
    Tab(
      child: Text(LangKeys.all),
    ),
    Tab(
      child: Text(LangKeys.accepted),
    ),
    Tab(
      child: Text(LangKeys.declined),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: false,
              floating: true,
              snap: true,
              backgroundColor: CustomColors.scaffoldBackgroundColor,
              forceElevated: boxIsScrolled,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        color: CustomColors.white,
                        fontSize: 34,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset("assets/svg/setting.svg"),
                    ),
                  ),
                ],
              ),
              bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                controller: tabController,
                indicator: BoxDecoration(
                  color: CustomColors.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Color(0xFF385AD3),
                    width: 3,
                  ),
                ),
                tabs: tabs,
              ),
            )
          ];
        },
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            AllPage(),
            AcceptedPage(),
            DecLinedPage(),
          ],
          controller: tabController,
        ),
      ),
    );
  }
}
// BottomNavigationBar(
//   onTap: onTabTapped,
//   items: [
//     BottomNavigationBarItem(
//       title: Text('Profile'),
//       icon: Icon(
//         Icons.home,
//       ),
//     ),
//     BottomNavigationBarItem(
//       title: Text('Profile'),
//       icon: Icon(
//         Icons.home,
//       ),
//     ),
//     BottomNavigationBarItem(
//       title: Text('Profile'),
//       icon: Icon(
//         Icons.home,
//       ),
//     ),
//   ],
// ),

// body: DefaultTabController(
// length: 3,
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.start,
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 30),
// child: Text(
// "Home",
// style: TextStyle(
// color: CustomColors.white,
// fontSize: 34,
// ),
// ),
// ),
// Expanded(
// child: Align(
// alignment: Alignment.topRight,
// child: SvgPicture.asset("assets/svg/setting.svg"),
// ),
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
// child: Container(
// decoration: BoxDecoration(
// color: Color(0xFF385AD3),
// borderRadius: BorderRadius.circular(8),
// ),
// child: TabBar(
// indicatorSize: TabBarIndicatorSize.tab,
// indicator: BoxDecoration(
// color: CustomColors.scaffoldBackgroundColor,
// borderRadius: BorderRadius.circular(8),
// border: Border.all(
// color: Color(0xFF385AD3),
// width: 3,
// ),
// ),
// tabs: tabs,
// ),
// ),
// ),
// Expanded(
// child: TabBarView(
// physics: NeverScrollableScrollPhysics(),
// children: [
// AllPage(),
// AcceptedPage(),
// DecLinedPage(),
// ],
// ),
// ),
//
// ],
// ),
