import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techware_design/pages/search_page.dart';

import '../theme/colors.dart';
import 'home_page.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset("assets/images/menu.svg",width: 30,color: Colors.green,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SvgPicture.asset("assets/images/search_active_icon.svg",width: 30,color: Colors.black,),
              ),
              SizedBox(height: 20,),
              Container(
                height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      border: Border.all(
                          color: white.withOpacity(0.2)
                      )
                  ),
                  child: Center(child: SvgPicture.asset("assets/images/message.svg",width: 20,color: Colors.white,))),
            ],
          ),
        ],
      ),
    ),
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }
  Widget getBody(){
    List<Widget> pages = [
      HomePage(),
      SearchPage(),
      Center(
          child: Text("Upload Page",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: black
          ),),
      ),
      Center(
          child: Text("Activity Page",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: black
          ),),
      ),
      Center(
          child: Text("Account Page",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: black
          ),),
      )
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List bottomItems = [
      pageIndex == 0
          ? "assets/images/home_active_icon.svg"
          : "assets/images/home_icon.svg",
      pageIndex == 1
          ? "assets/images/top.svg"
          : "assets/images/top.svg",
      pageIndex == 2
          ? "assets/images/upload_active_icon.svg"
          : "assets/images/upload_icon.svg",
      pageIndex == 3
    ? "assets/images/search_active_icon.svg"
        : "assets/images/search_icon.svg",

      pageIndex == 4
          ? "assets/images/account_active_icon.svg"
          : "assets/images/account_icon.svg",
    ];
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(color: appFooterColor),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(bottomItems.length, (index) {
            return InkWell(
                onTap: () {
                  selectedTab(index);
                },
                child: SvgPicture.asset(
                  bottomItems[index],
                  color: pageIndex == 2 ? null : Colors.white,
                  width: 27,
                ));
          }),
        ),
      ),
    );
  }

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
