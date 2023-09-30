import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/dashboard/dashboard_screen.dart';
import 'package:jewelrey_store/shared/curve_painter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class LogInAdmin extends StatelessWidget {
  var userController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB5838D),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Padding(
                padding: const EdgeInsets.only(left: 400),
                child: CircularPercentIndicator(
                  radius: 50.0,
                  lineWidth: 15.0,
                  progressColor: Color(0xFFE5989B),
                  percent: 0.99,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 155),
                child: Image(
                  image: AssetImage(
                    'images/Group.jpg',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 71),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 305,
                      height: 44,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: userController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          hintText: 'Admin',
                          hintStyle: TextStyle(
                            fontSize: 17,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.08,
                            letterSpacing: -0.41,
                            color: Colors.white,
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 305,
                      height: 44,
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwordController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.lock_open_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                          hintText: 'Admin',
                          hintStyle: TextStyle(
                            fontSize: 17,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.08,
                            letterSpacing: -0.41,
                            color: Colors.white,
                          ),

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65 , top: 43),
                child: Container(
                  width: 300,
                  height: 45,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    color: Colors.white,
                  ),
                  child: MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DashboardScreen(
                        ),
                      ),
                      );
                    },
                    child: Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 20,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ),
                ),
              ),
              AdaptiveIndicator(
                os: getOS(),
              ),

            ],
      ),
    );
  }
}
