import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/dashboard/menu.dart';
import 'package:jewelrey_store/dashboard/users.dart';

class AddUsers extends StatefulWidget {
  @override
  State<AddUsers> createState() => _AddUsersState();
}

class _AddUsersState extends State<AddUsers> {
 bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0x19FFCDB2),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Transform.scale(
              scaleY: -1,
              child: IconButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Menu(
                    ),
                  ),
                  );
                },
                icon: Icon(
                  Icons.sort_rounded,
                  size: 38,
                  color: Color(0xFFB5838D),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 140, top: 12),
              child: Text(
                'Add Users',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF6D6875),
                  fontSize: 24,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 0.04,
                  letterSpacing: -0.41,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 11),
              child: Container(
                width: 380,
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
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 28,),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 272,
                      height: 49,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFB5838D),
                              width: 1,
                            ),
                          ),
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            color: Color(0x7FB5838D),
                            fontSize: 17,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.08,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    CupertinoSwitch(
                      value: switchValue,
                      activeColor: Color(0xFFB5838D),
                      onChanged: (value)
                      {
                        setState(() {
                          switchValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 5,),
              child: Container(
                width: 375,
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFB5838D),
                        width: 1,
                      ),
                    ),
                    hintText: 'E-mail address',
                    hintStyle: TextStyle(
                      color: Color(0x7FB5838D),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                      letterSpacing: -0.41,
                    ),
                  ),

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 17, top: 5),
              child: Row(
                children:
                [
                  Container(
                    width: 196,
                    height: 49,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFB5838D),
                            width: 1,
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color(0x7FB5838D),
                          fontSize: 17,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                          letterSpacing: -0.41,
                        ),
                      ),

                    ),
                  ),
                  Container(
                    width: 180,
                    height: 49,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFB5838D),
                            width: 1,
                          ),
                        ),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                          color: Color(0x7FB5838D),
                          fontSize: 17,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                          letterSpacing: -0.41,
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 5),
              child: Row(
                children:
                [
                  Container(
                    width: 196,
                    height: 49,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFB5838D),
                            width: 1,
                          ),
                        ),
                        hintText: 'Mobile',
                        hintStyle: TextStyle(
                          color: Color(0x7FB5838D),
                          fontSize: 17,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                          letterSpacing: -0.41,
                        ),
                      ),

                    ),
                  ),
                  Container(
                    width: 180,
                    height: 49,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFB5838D),
                            width: 1,
                          ),
                        ),
                        hintText: 'Permissions',
                        hintStyle: TextStyle(
                          color: Color(0x7FB5838D),
                          fontSize: 17,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                          letterSpacing: -0.41,
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, top: 7),
              child: Container(
                width: 375,
                height: 49,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      width: 1,
                      color: Color(0xFFB5838D),
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:
                  [
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 80,
                      height: 21,
                      child: MaterialButton(
                        onPressed: (){},
                        child: Text(
                          'Browser',
                          style: TextStyle(
                            color: Color(0xFF6D6875),
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                            letterSpacing: -0.41,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                          side: BorderSide(
                            color: Color(0xFF6D6875),
                          ),
                        ),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 215,
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Image(
                        image: AssetImage(
                          'images/gallery.jpg',
                        ),
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 215, top: 28),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 85,
                    height: 42,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Color(0xFF6D6875),
                    ),
                    child: MaterialButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Users(
                          ),
                        ),
                        );
                      },
                      child: Text(
                        'Close',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 85,
                    height: 42,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Color(0xFFB5838D),
                    ),
                    child: MaterialButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Users(
                          ),
                        ),
                        );
                      },
                      child: Text(
                        'Save',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                          letterSpacing: -0.41,
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
          ],
        ),
      ),
    );
  }
}
