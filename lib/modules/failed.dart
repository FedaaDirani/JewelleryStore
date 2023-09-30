import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/modules/chating.dart';
import 'package:jewelrey_store/modules/check_out2.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/forget_password.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class FailedScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: CircleAvatar(
          radius: 16,
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => ForgetPasswordScreen(
                ),
              ),
              );

              },
            icon: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFF6D6875),
                  width: 2,
                ),
              ),
              child: Icon(
                Icons.arrow_back_ios_new,
                size: 16,
                color: Color(0xFF6D6875),
              ),
            ),
          ),
        ),
        title: Text(
          'Order Complete',
          style: TextStyle(
            color: Color(0xFF6D6875),
            fontSize: 15,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w400,
            height: 0.09,
            letterSpacing: -0.24,
          ),
        ),
        centerTitle: true,
      ),
      body:
      Container(
        width:double.infinity,
          color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140, left: 159,),
              child:  Image(
                      image: AssetImage(
                        'images/failed.jpg',
                      ),
                    ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 135,top: 21,),
              child: Container(
                child: Text(
                  'Order Failed',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontFamily: 'SR Pro Text',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    height: 1.21,
                    letterSpacing: 0.36,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11, left: 115,),
              child: Container(
                child: Opacity(
                  opacity: 0.60,
                  child: Text(
                    'Your payment occurred an error',
                    style: TextStyle(
                      color: Color(0xFFB5838D),
                      fontFamily: 'SR Pro Text',
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                      letterSpacing: -0.24,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 202, top: 80,),
              child: Icon(
                Icons.error_outline_outlined,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 175, top: 23,),
              child: Text(
                'Do not worry 😉',
                style: TextStyle(
                  color: Color(0xFF171717),
                  fontSize: 13,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w600,
                  height: 1.38,
                  letterSpacing: -0.08,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 85, top: 14),
              child: Container(
                width: 259,
                height: 39,
                child: Text(
                  'Keep calm, sometimes it happens \n Please go back and check your payment method \n or contact us',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 11,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.18,
                    letterSpacing: 0.07,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62,top: 35,),
              child: Container(
                width: 305,
                height: 44,
                color: Color(0xFFB5838D),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => CheckOut2(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.keyboard_backspace_sharp,
                        color: Colors.white,
                        size: 24,
                      ),
                      SizedBox(
                        width: 38,
                      ),
                      Text(
                        'Review Payment Method',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1.38,
                          letterSpacing: -0.078,
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 61,top: 26,),
              child: Container(
                width: 305,
                height: 44,
                alignment: Alignment.center,
                color: Color(0xFF6D6875),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Chating(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25,),
                        child: Text(
                          'Please...I need Help',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 1.38,
                            letterSpacing: -0.078,
                          ),
                        ),
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
