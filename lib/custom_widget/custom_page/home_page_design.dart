import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../costom_list/custom_list.dart';

class HomePageDesign extends StatelessWidget {
  const HomePageDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width*0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text(
                      'Emergency Balance',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                        fontSize: 17
                      )
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      width: 160.0,
                      height: 160.0,
                      decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                          border:
                          Border.all(width: 2, color:  Colors.red),
                          // color: Color(0xFFD02C6B),
                          borderRadius: BorderRadius.circular(150.0),
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 155,
                          height: 155,
                          // color: Colors.blue,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                              // border:
                              // Border.all(width: 3, color:  Colors.red),
                              // color: Color(0xFFD02C6B),
                              borderRadius: BorderRadius.circular(150.0),

                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: const[
                                Text('৳ 0.26',
                                  style: TextStyle(
                                    fontSize: 33,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                  ),
                                ),
                                Text('Available',
                                  style: TextStyle(
                                      fontSize: 18,
                                      // fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  ),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    InkWell(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Text('Details', style: TextStyle(
                            color: Colors.blue,
                            fontSize: 19,
                            fontWeight: FontWeight.w500
                          ),),
                          Icon(
                            weight: 4,
                            Icons.arrow_forward_ios,
                            color: Colors.blue,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width*0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.language, color: Colors.red,),
                         const SizedBox(width: 10,),
                         Column(
                           children: [
                             // const SizedBox(height: 20,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 SizedBox(
                                   width: size.width*0.29,
                                   child: const Text('0 MB',style: TextStyle(
                                     color: Colors.red,
                                     fontSize: 19,
                                     fontWeight: FontWeight.w500
                                   ),),
                                 ),

                                 const Icon(Icons.arrow_forward_ios, color: Colors.blue,)
                               ],
                             ),
                             const SizedBox(height: 15,),
                              SizedBox(
                               width: 150,
                               child:  Divider(
                                 thickness: 1,
                                 color: Colors.grey.shade300
                               ),
                             )
                           ],
                         )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(LineIcons.phone, color: Colors.black54,),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              // const SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: size.width*0.29,
                                    child:const Text('0 Min',style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),
                                  const Icon(Icons.arrow_forward_ios, color: Colors.blue,)
                                ],
                              ),
                              const SizedBox(height: 15,),
                               SizedBox(
                                width: 150,
                                child:  Divider(
                                  thickness: 1,
                                  color: Colors.grey.shade300,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.chat_outlined, color: Colors.black54,),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              // const SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: size.width*0.29,
                                    child: const Text('0 SMS',style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500
                                    ),),
                                  ),

                                  const Icon(Icons.arrow_forward_ios, color: Colors.blue,)
                                ],
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          const Divider(
            thickness: 12,
            color: Color(0xffE8EDF1),
            // color: Colors.red,
          ),

          listOfCard('Free Subscription plan!'),

          const Divider(
            thickness: 12,
            color: Color(0xffE8EDF1),
            // color: Colors.red,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: SizedBox(
          //     child: Row(
          //       children: [
          //         Expanded(
          //           child: Stack(
          //             clipBehavior: Clip.none,
          //             children: [
          //               Positioned(
          //                 // left:95,
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
          //                   decoration: BoxDecoration(
          //                     color: Color(0xffF2F2F2),
          //                     border:
          //                     Border.all(width: 2, color:  Colors.white),
          //                     // color: Color(0xFFD02C6B),
          //                     borderRadius: BorderRadius.circular(50.0),
          //                     // image: const DecorationImage(
          //                     //     image: AssetImage('images/profile.png'))
          //                   ),
          //                   child:const Padding(
          //                     padding:  EdgeInsets.all(10.0),
          //                     child: Center(
          //                         child:  Text("+2",style: TextStyle(
          //                             fontWeight: FontWeight.w500,
          //                             fontSize: 19
          //                         ),)),
          //                   ),
          //                 ),
          //               ),
          //
          //               Positioned(
          //                 left: 43,
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(2.0),
          //                   child: Container(
          //                     width: 60,
          //                     height: 60,
          //                     decoration: BoxDecoration(
          //                       color: const Color(0xffFBF9E9),
          //                       border:
          //                       Border.all(width: 2, color:  Colors.white),
          //                       // color: Color(0xFFD02C6B),
          //                       borderRadius: BorderRadius.circular(50.0),
          //                       // image: const DecorationImage(
          //                       //     image: AssetImage('images/profile.png'))
          //                     ),
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(1.0),
          //                       child: ClipRRect(
          //                           borderRadius: BorderRadius.circular(20),
          //                           child: Image.asset('images/nagad.png')),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //
          //               Positioned(
          //                 left: 95,
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(2.0),
          //                   child: Container(
          //                     width: 60,
          //                     height: 60,
          //                     decoration: BoxDecoration(
          //                       color: const Color(0xffECF5FC),
          //                       border:
          //                       Border.all(width: 2, color:  Colors.white),
          //                       // color: Color(0xFFD02C6B),
          //                       borderRadius: BorderRadius.circular(50.0),
          //                       // image: const DecorationImage(
          //                       //     image: AssetImage('images/profile.png'))
          //                     ),
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                       child: ClipRRect(
          //                           borderRadius: BorderRadius.circular(20),
          //                           child: Image.asset('images/visa.png')),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //
          //               Positioned(
          //                 left: 145,
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(2.0),
          //                   child: Container(
          //                     width: 60,
          //                     height: 60,
          //                     decoration: BoxDecoration(
          //                       color: const Color(0xffFAEEEA),
          //                       border:
          //                       Border.all(width: 2, color:  Colors.white),
          //                       // color: Color(0xFFD02C6B),
          //                       borderRadius: BorderRadius.circular(50.0),
          //                       // image: const DecorationImage(
          //                       //     image: AssetImage('images/profile.png'))
          //                     ),
          //                     child: Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                       child: ClipRRect(
          //                           borderRadius: BorderRadius.circular(20),
          //                           child: Image.asset('images/visaimage.png')),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //
          //               Positioned(
          //                 left: -1,
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
          //                   decoration: BoxDecoration(
          //                     color:const Color(0xffFFE2F0),
          //                     border:
          //                     Border.all(width: 2, color:  Colors.white),
          //                     // border:
          //                     // Border.all(width: 2, color:  Colors.red),
          //                     // color: Color(0xFFD02C6B),
          //                     borderRadius: BorderRadius.circular(50.0),
          //                     // image: const DecorationImage(
          //                     //     image: AssetImage('images/profile.png'))
          //                   ),
          //                   child: Padding(
          //                     padding: const EdgeInsets.all(10.0),
          //                     child: ClipRRect(
          //                         borderRadius: BorderRadius.circular(20),
          //                         child: Image.asset('images/bkash.png')),
          //                   ),
          //                 ),
          //               ),
          //               Positioned(
          //                 left:195,
          //                 child: Container(
          //                   width: 60,
          //                   height: 60,
          //                   decoration: BoxDecoration(
          //                     color: Color(0xffF2F2F2),
          //                     border:
          //                     Border.all(width: 2, color:  Colors.white),
          //                     // color: Color(0xFFD02C6B),
          //                     borderRadius: BorderRadius.circular(50.0),
          //                     // image: const DecorationImage(
          //                     //     image: AssetImage('images/profile.png'))
          //                   ),
          //                   child:const Padding(
          //                     padding:  EdgeInsets.all(10.0),
          //                     child: Center(
          //                         child:  Text("+2",style: TextStyle(
          //                             fontWeight: FontWeight.w500,
          //                             fontSize: 19
          //                         ),)),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              // focusColor: Colors.white,
              onTap: (){
                // print("object");
              },
              child: Container(

                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 230,
                        height: 80,
                        child: Image.asset('images/logos.png')
                    ),
                    Container(
                        width: 140.0,
                        // height: 50.0,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          color: const Color(0xff0079D1),
                            // border:
                            // Border.all(width: 3, color: const Color(0xffF8FAFA)),
                            // color: Color(0xFFD02C6B),
                            borderRadius: BorderRadius.circular(10.0),
                           ),
                        child:const Center(child: Padding(
                          padding:  EdgeInsets.fromLTRB(6, 12, 6, 12),
                          child:  Text('Recharge Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        )))
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            thickness: 12,
            color: Color(0xffE8EDF1),
            // color: Colors.red,
          ),

          InkWell(
            // focusColor: Colors.white,
            onTap: (){
              // print("object");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: size.width,
                    // height: 80,
                    child: Image.asset('images/banner_image.png')
                ),

              ],
            ),
          ),
          const Divider(
            thickness: 12,
            color: Color(0xffE8EDF1),
            // color: Colors.red,
          ),

          const SizedBox(height: 100,)
        ],
      ),
    );
  }
}
