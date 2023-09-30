import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class NoReturnScreen extends StatelessWidget {

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
            onPressed: (){},
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
          'Return',
          style: TextStyle(
            color: Color(0xFF5F5A5A),
            fontSize: 15,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
            height: 0.09,
            letterSpacing: -0.50,
          ),
        ),
        centerTitle: true,
      ),
        body: Container(
        width:double.infinity,
    color: Colors.white,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 175, top: 268,),
        child: Container(
          child: Image(
            image: AssetImage(
              'images/returning.jpg',
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 162, top: 11,),
        child: Text(
          'No Return Item',
          style: TextStyle(
            color: Color(0xFF6D6875),
            fontSize: 15,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w400,
            height: 1.33,
            letterSpacing: -0.24,
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
