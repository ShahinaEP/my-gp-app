import 'package:assignment/custom_widget/custom_appbar/home_appbar.dart';
import 'package:assignment/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';


import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavBar(
      actionButton: CurvedActionBar(

          // onTab: (value) {
          //   /// perform action here
          //   print(value);
          // },
          activeIcon:
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Color(0xff0178d3), shape: BoxShape.circle),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: SizedBox(
                    width: 40,
                      height: 40,
                      child: Image.asset('images/comprass2.png'))
              )

          ),
          inActiveIcon:
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
                child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset('images/comprass.png'))
            )
          ),
          // text: "Explore"
      ),
      activeColor: Colors.blue,
      // navBarBackgroundColor: Colors.,
      inActiveColor: Colors.black45,
      appBarItems: [
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.home,
              color: Colors.blue,

            ),
            inActiveIcon:const Icon(
              Icons.home,
              color: Colors.black26,

            ),
            text: 'Home'),

        FABBottomAppBarItem(
            activeIcon: SizedBox(
              width: 30,
              height: 28,
              child: Image.asset('images/offers2.png')
              ),
            inActiveIcon:SizedBox(
                width: 30,
                height: 28,
                child: Image.asset('images/offers.png')
            ),
            text: 'Offers'),
        FABBottomAppBarItem(
            activeIcon: const Icon(

              LineIcons.user,
              color: Colors.blue,
            ),
            inActiveIcon:const Icon(
              LineIcons.user,
              color: Colors.black26,
            ),
            text: 'Account'),
        FABBottomAppBarItem(
            activeIcon: const Icon(
              Icons.menu,
              color: Colors.blue,
            ),
            inActiveIcon:const Icon(
              Icons.menu,
              color: Colors.black26,
            ),
            text: 'Menu'),
      ],
      bodyItems: [
        Container(
          height: MediaQuery.of(context).size.height,
          child:HomePage(),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.pinkAccent,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.pinkAccent,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.pinkAccent,
        )
      ],
      actionBarView: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
      ),
    );
  }
}



