import 'package:ck_login/UI/accepted_page/accepted_page.dart';
import 'package:ck_login/UI/all_page/all_page.dart';
import 'package:ck_login/UI/declined_page/declined_page.dart';
import 'package:ck_login/constants.dart';
import 'package:ck_login/UI/widgets/input_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverPadding(
              padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 5),
              sliver: SliverAppBar(
                leading: null,
                titleSpacing: 0,
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
                      padding: const EdgeInsets.only(top: 40, bottom: 20),
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: CustomColors.white,
                          fontSize: 34,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => showCupertinoModalBottomSheet(
                          duration: Duration(milliseconds: 300),
                          expand: true,
                          context: context,
                          builder: (context) => myBar(context),
                        ),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 0, top: 30),
                            child: Container(
                              height: 50,
                              width: 50,
                              color: CustomColors.scaffoldBackgroundColor,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 13.0,
                                  left: 13,
                                  bottom: 13,
                                  right: 6,
                                ),
                                child: SvgPicture.asset(
                                  "assets/svg/setting.svg",
                                ),
                              ),
                            ),
                          ),
                        ),
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
              ),
            ),
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

Widget myBar(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 12),
            child: Container(
              alignment: Alignment.center,
              child: Container(
                width: 53,
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xFF62626D),
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text(
                "Filtration",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CustomColors.white,
                  fontSize: 17,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        color: CustomColors.scaffoldBackgroundColor,
                        height: 47,
                        width: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text(
                            "Close",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: CustomColors.buttonBackGroundColor,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Choose merchant",
              style: TextStyle(color: CustomColors.white, fontSize: 17),
            ),
          ),
          InputForm.filled(
            hintText: "From price",
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22.5, bottom: 13),
            child: Divider(
              height: 1,
              thickness: 1,
              color: CustomColors.inputBackGroundColor,
            ),
          ),
          Text(
            "Some setting",
            style: TextStyle(color: CustomColors.white, fontSize: 17),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              children: [
                Expanded(
                  child: InputForm.filled(
                    hintText: "From price",
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InputForm.filled(
                    hintText: "To price",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
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
