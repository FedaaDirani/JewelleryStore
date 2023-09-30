import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/modules/check_out4.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/forget_password.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class SuccessfullyPay extends StatelessWidget {

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
                builder: (context) => CheckOut4(
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
        padding: const EdgeInsets.only(top: 225, left: 159,),
        child: CircleAvatar(
          backgroundColor: Color(0x4CE5989B),
          radius: 55,
          child: CircleAvatar(
            radius: 45,
            backgroundColor: Color(0x99E5989B),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xFFE5989B),
              child: Icon(
                Icons.check_outlined,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 62,top: 21,),
        child: Container(
          child: Text(
            'Payment Successful!',
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
        padding: const EdgeInsets.only(top: 11, left: 106,),
        child: Container(
          child: Opacity(
            opacity: 0.60,
            child: Text(
              'Order #100 will arrive in 1 hour',
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
        padding: const EdgeInsets.only(left: 62,top: 150,),
        child: Container(
          width: 305,
          height: 44,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color(0xFFB5838D),
          ),
          child: MaterialButton(
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => CheckOut4(
                ),
              ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90,),
                  child: Text(
                    'See Order details',
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

                Padding(
                  padding: const EdgeInsets.only(left: 58,),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 24,
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
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Color(0xFF6D6875),
          ),
          child: MaterialButton(
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => HomeScreen(
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
                    'Continue Shopping',
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
