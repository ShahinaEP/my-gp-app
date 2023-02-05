import 'package:flutter/material.dart';
List sliderList =[
  {
    "text": 'Tab to get Free Subscription',
    "image":'images/slider2.png'
  },
  {
    "text": 'Tab to get Free Subscription',
    "image":'images/slider.png'
  },
];
Widget listOfCard(title,) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 25,),
      Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 15),
        child: Text(
          title,
          style:const TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
        ),
      ),
      SizedBox(
        // width: 300,
        height: 185,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sliderList.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 310,
              child: Card(
                elevation: 1,
                margin: const EdgeInsets.only(left: 19, right: 0),
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox(
                        width:300,
                          child: Image.asset(sliderList[index]['image'], fit: BoxFit.fitWidth,)),
                    ),

                     const SizedBox(height: 7,),
                     Padding(
                      padding:const EdgeInsets.only(top: 10,left: 10),
                      child: Row(
                        children: const[
                          Text(
                            'Tab to get Free Subscription!',
                            style: TextStyle(
                                color: Color(0xff3F8DC0),
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                            SizedBox(width: 10,),
                           Icon(Icons.arrow_forward_ios, size: 15, color: Colors.blue,)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),


                  ],
                ),
              ),
            );
          },
        ),
      ),
      const SizedBox(height: 25,)
    ],
  );
}