import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/sign_in.dart';
import 'package:jewelrey_store/modules/vetification.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class DoneScreen extends StatelessWidget {
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
                builder: (context) => VertificationScreen(
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

      ),
      body: Container(
        width: double.infinity,
    color: Colors.white,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children:
    [
      Padding(
        padding: const EdgeInsets.only(top: 200, left: 159,),
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
        padding: const EdgeInsets.only(left: 115,top: 21,),
        child: Container(
          child: Text(
            'Phone Verified',
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
        padding: const EdgeInsets.only(top: 11, left: 132,),
        child: Container(
          child: Opacity(
            opacity: 0.60,
            child: Text(
              'Configure Successfully',
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
        padding: const EdgeInsets.only(left: 62,top: 215,),
        child: Container(
          width: 305,
          height: 44,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9)
            ),
            color: Color(0xFFB5838D),
          ),
          child: MaterialButton(
            padding: EdgeInsets.only(left: 137),
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SignInScreen(
                ),
              ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Done',
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
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 24,
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

