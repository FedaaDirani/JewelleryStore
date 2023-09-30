import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/enter_the_information2.dart';
import 'package:jewelrey_store/modules/get_started.dart';
import 'package:jewelrey_store/modules/sign_in.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class EnterTheInformation1 extends StatelessWidget {
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
                builder: (context) => GetStarted(
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
              padding: const EdgeInsets.only(left: 16, top: 30,),
              child: Container(
                width: 305,
                height: 68,
                child: Text(
                  'Enter the delivery address',
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
              padding: const EdgeInsets.only(left: 19, top: 48,),
              child: Container(
                width: 305,
                height: 44,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'First name',
                    labelStyle: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.29,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24,),
              child: Container(
                width: 305,
                height: 44,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Last name',
                    labelStyle: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.29,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24,),
              child: Container(
                width: 305,
                height: 44,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Address',
                    labelStyle: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.29,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24,),
              child: Container(
                width: 305,
                height: 44,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'City',
                    labelStyle: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.29,
                      letterSpacing: -0.41,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Container(
                    width: 305,

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
                        hintText: '997555668',
                        hintStyle: TextStyle(
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
              padding: const EdgeInsets.only(left: 19,top: 42,),
              child: OutlinedButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => EnterTheInformaion2(
                    ),
                  ),
                  );
                },
                child: Text(
                  'Add a note',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFB5838D),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.29,
                    letterSpacing: -0.41,
                  ),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62,top: 80,),
              child: Container(
                width: 305,
                height: 44,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                  ),
                  color: Color(0xFFB5838D),
                ),
                child: MaterialButton(
                  padding: EdgeInsets.only(left: 138),
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
                        'save',
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
                        width: 97,
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
