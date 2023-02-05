import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class Constance{
  PreferredSizeWidget homeAppBar(){
    return AppBar(
        flexibleSpace:SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                            border:
                            Border.all(width: 3, color: const Color(0xffF8FAFA)),
                            // color: Color(0xFFD02C6B),
                            borderRadius: BorderRadius.circular(50.0),
                            image: const DecorationImage(
                                image: AssetImage('images/profile.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 12, 10, 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Shahina Easmin ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Row(
                              children: const [
                                Text('01700000000',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      // fontWeight: FontWeight.w500
                                    )
                                ),
                                Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white,)
                              ],
                            )
                          ],
                        ),
                      ),

                    ]),
                Column(
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon(LineIcons.bell,size: 30,),
                        const Icon(MdiIcons.bellOutline, size: 23,color: Colors.white,),
                        const SizedBox(width: 21,),
                        const Icon(Icons.search, size: 28,color: Colors.white,),
                        const SizedBox(width: 20,),
                        SizedBox(
                            width: 40,
                            height:40,
                            child: Image.asset('images/ring.png'))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
 
}