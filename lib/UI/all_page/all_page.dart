import 'package:ck_login/UI/transaction_details_page/transaction_details_page.dart';
import 'package:ck_login/response_models/home_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class AllPage extends StatefulWidget {
  @override
  _AllPageState createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  List<HomeResponse> responsesList = [
    HomeResponse("RB3A5YQN45YHS45NY4S6UY", "0.25634789 BTC", "124.34"),
    HomeResponse("RB3A5YQN45YHS45NY4S6U3", "0.25634789 BTC", "124.34"),
    HomeResponse("RB3A5YQN45YHS45NY4S6U2", "0.25634789 BTC", "124.34"),
  ];
  SlidableController slidableController;

  void slideAnimationChanged(Animation<double> slideAnimation) {
    setState(() {
      _rotationAnimation = slideAnimation;
    });
  }

  @override
  void initState() {
    slidableController = SlidableController(
      onSlideAnimationChanged: slideAnimationChanged,
    );
    super.initState();
  }

  Animation<double> _rotationAnimation;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: responsesList.length,
      itemBuilder: (BuildContext context, int index) {
        return Slidable.builder(
          controller: slidableController,
          key: Key(responsesList[index].key),
          actionPane: SlidableDrawerActionPane(),
          actionExtentRatio: 0.25,
          child: box(
            responsesList[index],
          ),
          actionDelegate: SlideActionBuilderDelegate(
            actionCount: 1,
            builder: (BuildContext context, int index,
                Animation<double> animation, SlidableRenderingMode step) {
              return IconSlideAction(
                color: CustomColors.scaffoldBackgroundColor,
                iconWidget: Container(
                  height: 105,
                  decoration: BoxDecoration(
                    color: CustomColors.acceptedColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(13),
                      bottomRight: Radius.circular(13),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/accept_arrow.svg",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Accept",
                          style: TextStyle(
                              color: CustomColors.white, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Slidable.of(context).dismiss();
                  setState(
                    () {
                      responsesList.removeAt(index);
                    },
                  );
                  print("pressed");
                },
              );
            },
          ),
          secondaryActionDelegate: SlideActionBuilderDelegate(
            actionCount: 1,
            builder: (BuildContext context, int index,
                Animation<double> animation, SlidableRenderingMode step) {
              return IconSlideAction(
                color: CustomColors.scaffoldBackgroundColor,
                iconWidget: Container(
                  height: 105,
                  decoration: BoxDecoration(
                    color: CustomColors.declinedColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      bottomLeft: Radius.circular(13),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/cross.svg",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Decline",
                          style: TextStyle(
                              color: CustomColors.white, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  setState(() {
                    responsesList.removeAt(index);
                  });
                  print("pressed");
                },
              );
            },
          ),
        );
      },
    );
  }

  Widget box(HomeResponse response) {
    var padding = const EdgeInsets.only(left: 20, right: 20, top: 10);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => TransactionDetails(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7.5),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF30303A),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: padding,
                child: Text(
                  response.key,
                  style: TextStyle(color: CustomColors.white, fontSize: 13),
                ),
              ),
              Padding(
                padding: padding,
                child: Text(
                  response.valueInCrypto,
                  style: TextStyle(color: CustomColors.white, fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 17.5),
                child: Text(
                  "\$ " + response.valueInDollars,
                  style: TextStyle(color: Color(0xFF62626D), fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*actions: <Widget>[
            IconSlideAction(
              color: CustomColors.scaffoldBackgroundColor,
              iconWidget: Container(
                height: 105,
                decoration: BoxDecoration(
                  color: CustomColors.acceptedColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/accept_arrow.svg",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Accept",
                        style:
                            TextStyle(color: CustomColors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                Slidable.of(context).dismiss();
                setState(
                  () {
                    responsesList.removeAt(index);
                  },
                );
                print("pressed");
              },
            ),
          ],
          secondaryActions: [
            IconSlideAction(
              color: CustomColors.scaffoldBackgroundColor,
              iconWidget: Container(
                height: 105,
                decoration: BoxDecoration(
                  color: CustomColors.declinedColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    bottomLeft: Radius.circular(13),
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/cross.svg",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Decline",
                        style:
                            TextStyle(color: CustomColors.white, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () {
                print("pressed");
              },
            ),
          ],*/
