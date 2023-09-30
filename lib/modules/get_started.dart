import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/modules/enter_the_information1.dart';
import 'package:jewelrey_store/modules/sign_in.dart';
import 'package:jewelrey_store/modules/start_page.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class GetStarted extends StatefulWidget {
  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  var emailController = TextEditingController();

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
                  builder: (context) => StartPage(
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
      body:
      Container(
        width: double.infinity,
          color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 20,),
            child: Container(
              child: Text(
                'Getting Started',
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
                opacity: 0.60,
                child: Text(
                  'Create an account to continue!',
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
            padding: const EdgeInsets.only(left: 62,top: 73,),
            child: Container(
              width: 305,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Enter your email',
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
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'ranem.omarr@example.com',
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Text',
                        color: Colors.grey[200],
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 62,top: 40,),
            child: Container(
              width: 305,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
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
                      hintText: 'ex:Ranim',
                      hintStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Text',
                        color: Colors.grey[200],
                      ),
                      prefixIcon: Icon(
                        Icons.person_outlined,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 62,top: 24,),
            child: Container(
              width: 305,
              child: Column(
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
            padding: const EdgeInsets.only(left: 62,top: 36,),
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
                SizedBox(
                  width: 10,
                ),
                Text('By creating an account,you agree to our\n term & conditions',
                style: TextStyle(
                  color: Color(0xFF6D6875),
                  fontSize: 11,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 1.18,
                  letterSpacing: 0.07,
                ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 62,top: 29,),
            child: Container(
              width: 305,
              height: 44,
              color: Color(0xFFB5838D),
              child: MaterialButton(
                padding: EdgeInsets.only(left: 129),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                    );
                  },
                child: Row(
                  children: [
                    Text(
                        'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 1.38,
                        letterSpacing: -0.08,
                      ),
                      ),
                    SizedBox(
                      width: 80,
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
            padding: const EdgeInsets.only(left: 130, top: 4),
            child: Row(
              children:
              [
                Text(
                  'Already have an account?',
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
                        builder: (context) => SignInScreen(
                        ),
                      ),
                      );
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.blue,
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
        ],
    ),
      ),
    );
  }
}
