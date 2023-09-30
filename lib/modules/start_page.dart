import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/get_started.dart';

class StartPage extends StatelessWidget {
  List <String> images = ['images/start1.jpg' , 'images/start2.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0x4CFFCDB2),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: ShapeDecoration(
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                  color: Color(0xFFB5838D),
              blurRadius: 25,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
              ),
              child: CircleAvatar(
                radius: 25,
                child: Text(
                  'logo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.11,
                    letterSpacing: -0.32,
                  ),
                ),
                backgroundColor: Color(0xFFFFB4A2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Accessories Store',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6D6875),
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 0.05,
                letterSpacing: -0.32,
              ),
            ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: 400,
                height: 490,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child:ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2000),
                          topRight: Radius.circular(2000)

                        ),
                        child: Image(
                          image: AssetImage(
                            'images/start1.jpg',
                          ),
                          width: 220,
                          height: 307,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 177,
                      top: 168,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(2000),
                          bottomRight: Radius.circular(2000),
                        ),

                        child: Image(
                          image: AssetImage(
                            'images/start2.jpg',
                          ),
                          width: 219,
                          height: 318,
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            SizedBox(
              height: 30,
            ),
            Text(
              'The best jewelry in',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6D6875),
                fontSize: 40,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w700,
                height: 0.01,
                letterSpacing: -0.32,
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Text(
              'TheTown Now ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6D6875),
                fontSize: 40,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w700,
                height: 0.01,
                letterSpacing: -0.32,
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 235),
              child: Container(
                width: 158,
                height: 51,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Color(0xFFB5838D),
                ),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => GetStarted(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Get Start',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.05,
                          letterSpacing: -0.32,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 15,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 15,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AdaptiveIndicator(
              os: getOS(),
            ),


          ],
        ),
      ),
    );

  }
}
