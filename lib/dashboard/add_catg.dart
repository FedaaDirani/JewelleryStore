import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/dashboard/categories.dart';
import 'package:jewelrey_store/dashboard/menu.dart';

class AddCatg extends StatefulWidget {
  @override
  State<AddCatg> createState() => _AddCatgState();
}

class _AddCatgState extends State<AddCatg> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
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
                'Add Categories',
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
                            hintText: 'Name',
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
                width: 395,
                  height: 84,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFB5838D),
                          width: 1,
                        ),
                      ),
                      hintText: 'Description',
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
                          builder: (context) => Categories(
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
                      onPressed: () {},
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

                ],
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
