import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';

class ChatingAdmin extends StatelessWidget {

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
          'Chat With Store',
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
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Padding(
              padding: const EdgeInsets.only(left: 165,),
              child: Text(
                'Yesterday 9:41',
                style: TextStyle(
                  color: Color(0x993C3C43),
                  fontSize: 11,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.06,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, top: 18),
              child: Text(
                'Admin',
                style: TextStyle(
                  color: Color(0x993C3C43),
                  fontSize: 11,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 0.11,
                  letterSpacing: 0.06,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    padding: EdgeInsets.only(left: 16),
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'images/Contact Photo.jpg'
                          ),
                          fit: BoxFit.fill
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  BubbleSpecialOne(
                    text: 'Hello, Thank you for contacting store \nBefore starting, will store this and personal data according to the privacy policy',
                    isSender: false,
                    color: Color(0xFFE9E9EB),
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.41,
                    ),

                  ),
                ],
              ),
            ),
            SizedBox(
              height: 9,
            ),
            BubbleSpecialOne(
              text: 'please i need to help me',
              isSender: true,
              color: Colors.blue,
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
                letterSpacing: -0.41,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 430),
              child: Container(
                width: 355,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF777777),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children:
              [
                IconButton(
                  onPressed: (){},
                  icon: Image(
                    image: AssetImage(
                        'images/clarity_attachment.jpg'
                    ),
                    width: 23,
                    height: 24,
                  ),
                ),
                Container(
                  width: 315,
                  height: 36,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.mic_none,
                        color: Color(0x993C3C43),
                        size: 24,
                      ),
                      hintText: 'iMessage',
                      hintStyle: TextStyle(
                        color: Color(0x993C3C43),
                        fontSize: 17,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 0.08,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: -145,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.send,
                      color: Color(0x993C3C43),
                      size: 24,
                    ),
                  ),
                ),
              ],
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
