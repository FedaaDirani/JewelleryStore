import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/done.dart';
import 'package:jewelrey_store/modules/forget_password.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class VertificationScreen extends StatelessWidget {
  const VertificationScreen({super.key});

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
                    'OTP Authentication',
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
                  width: 305,
                  height: 40,
                  child: Opacity(
                    opacity: 0.60,
                    child: Text(
                      'An authentication code has been \n sent to (+963) 99555668',
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
                padding: const EdgeInsets.only(left: 62, top: 74,),
                child: Row(
                  children: [
                    Container(
                      width: 65,
                      height: 48,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          height: 1.27,
                          letterSpacing: 0.35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 65,
                      height: 48,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          height: 1.27,
                          letterSpacing: 0.35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 65,
                      height: 48,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          height: 1.27,
                          letterSpacing: 0.35,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 65,
                      height: 48,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w700,
                          height: 1.27,
                          letterSpacing: 0.35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 132, top: 15,),
                child: TextButton(

                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ForgetPasswordScreen(
                    ),
                  ),
                  );
                },
                  child: Text(
                    'Didn’t receive the SMS?',
                textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFB5838D),
                    fontSize: 15,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                    letterSpacing: -0.24,
                  ),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 126,),
                child: TextButton(
                  onPressed: (){},
                  child: Text(
                    'Request New Code in 05:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 1.38,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 62,top: 39,),
                child: Container(
                  width: 305,
                  height: 44,
                  color: Color(0xFFB5838D),
                  child: MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DoneScreen(
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
                            'Verify your phone',
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
              AdaptiveIndicator(
                os: getOS(),
              ),

            ],
      ),
      ),
    );
  }
}
