import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/modules/sign_in.dart';
import 'package:jewelrey_store/modules/vetification.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

import '../adaptive/constants.dart';

class ForgetPasswordScreen extends StatelessWidget {

  var phoneController = TextEditingController();
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
                builder: (context) => SignInScreen(
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
              padding: const EdgeInsets.only(left: 16, top: 51,),
              child: Container(
                child: Text(
                  'Password Recovery',
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
              padding: const EdgeInsets.only(left: 16,),
              child: Container(
                width: 280,
                height: 40,
                child: Opacity(
                  opacity: 0.60,
                  child: Text(
                    'Enter your phone number to recover your password',
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
              padding: const EdgeInsets.only(left: 62, top: 72),
              child: Text(
                'Phone Number',
                style: TextStyle(
                  color: Color(0xFF8F92A1),
                  fontSize: 12,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62, top: 18,),
              child: Row(
                children:
                [
                  Container(
                    width: 305,
                    height: 44,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      controller: phoneController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        prefixText: '+963',
                        prefixStyle: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          height: 1.27,
                          letterSpacing: 0.35,
                        ),
                        suffixIcon: Icon(
                          Icons.check_rounded,
                          size: 20,
                          color: Colors.green,
                        ),


                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62,top: 65,),
              child: Container(
                width: 305,
                height: 44,
                color: Color(0xFFB5838D),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => VertificationScreen(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100,),
                        child: Text(
                          'Continue',
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
                        padding: const EdgeInsets.only(left: 84,),
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
            AdaptiveIndicator(
              os: getOS(),
            ),

          ],
        ),
      ),
    );
  }
}

