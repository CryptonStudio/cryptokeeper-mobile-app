import 'package:ck_login/accepted_page/accepted_page.dart';
import 'package:ck_login/all_page/all_page.dart';
import 'package:ck_login/constants.dart';
import 'package:ck_login/declined_page/declined_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "Home",
                      style: TextStyle(color: CustomColors.white, fontSize: 34),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/svg/setting.svg"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF385AD3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      color: Color(0xFF212129),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFF385AD3), width: 3)),
                  tabs: [
                    Tab(
                      child: Text("All"),
                    ),
                    Tab(
                      child: Text("Accepted"),
                    ),
                    Tab(
                      child: Text("Declined"),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  AllPage(),
                  AcceptedPage(),
                  DecLinedPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}