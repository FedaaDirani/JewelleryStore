import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/enter_the_information1.dart';
import 'package:jewelrey_store/modules/get_started.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

import 'forget_password.dart';

class SignInScreen extends StatefulWidget {

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var userController = TextEditingController();

  var passwordController = TextEditingController();

  bool? check1 = false;

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
                builder: (context) => EnterTheInformation1(
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
        width: 428,
        height: 923,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 20,),
              child: Container(
                child: Text(
                  'Let’s Sign You In',
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
                child: Opacity(
                  opacity: 0.6,
                  child: Text(
                    'Welcome back, you’ve been missed!',
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
              padding: const EdgeInsets.only(left: 62,top: 45,),
              child: Container(
                width: 305,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Username or Email',
                      style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          fontFamily: 'SF Pro Text',
                          height: 1.18,
                          letterSpacing: 0.06
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 305,
                    height: 44,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: userController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          size: 20,
                        ),
                        hintText: 'FedaaDirani',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Text',
                          color: Color(0xFF6D6875),
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62,top: 25,),
              child: Container(
                width: 305,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'password',
                      style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          fontFamily: 'SF Pro Text',
                          height: 1.18,
                          letterSpacing: 0.06,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 305,
                    height: 44,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '• • • • • • • •',
                        hintStyle: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'DM Sans',
                          color: Color(0xFF6D6875),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_open_outlined,
                          size: 20,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_outlined,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55,top: 35,),
              child: Row(
                children:
                [
                  Checkbox(
                    value: check1,
                    checkColor: Color(0xFF6D6875),
                    onChanged: (bool? value){
                      //value returned when checkbox is clicked
                      setState(() {
                        check1 = value;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 11,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.18,
                      letterSpacing: 0.07,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  TextButton(onPressed: (){},
                      child:  TextButton(
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen(),
                          ),
                          );
                        },
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Color(0xFF6D6875),
                            fontSize: 11,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 1.18,
                            letterSpacing: 0.07,
                            decoration: TextDecoration.underline,
                          ),
                        ),

                      ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62,top: 134,),
              child: Container(
                width: 305,
                height: 44,
                color: Color(0xFFB5838D),
                child: MaterialButton(
                  padding: EdgeInsets.only(left: 40),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => HomeScreen(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 77,
                      ),
                      Container(
                        width: 140,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 1.38,
                            letterSpacing: -0.08,
                          ),
                        ),
                      ),

                      IconButton(onPressed: (){},
                        icon: Icon(
                          Icons.login_outlined,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Don’t have an account?',
              style: TextStyle(
                  color: Color(0xFF6D6875),
               fontSize: 11,
               fontFamily: 'SF Pro Text',
               fontWeight: FontWeight.w400,
               height: 1.18,
               letterSpacing: 0.07,
              ),
                  ),
                  TextButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => GetStarted(),
                      ),
                      );
                    },
                    child: Text(
                        'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 11,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 1.18,
                        letterSpacing: 0.07,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 62,top: 25,),
              child: Container(
                width: 305,
                height: 48,
                color: Color(0xFF3C79E6),
                child: MaterialButton(
                  padding: EdgeInsets.only(left: 12),
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.facebook_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        'connect with Facebook',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1.38,
                          letterSpacing: -0.08,
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
