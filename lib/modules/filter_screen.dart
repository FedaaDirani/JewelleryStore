import 'package:dashed_color_circle/dashed_color_circle.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/home_screen.dart';

class FilterScreen extends StatefulWidget {
  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var values = 10.0;
  var selectedRange = RangeValues(40, 80);
  List<bool> selection = [true,false,false,false,false,false,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 25,),
        child: Container(
          color: Color(0x33E5989B),
          child: Column(
            children:
            [
              Row(
                children:
                [
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFF6D6875),
                        width: 2
                      ),
                    ),
                    child: IconButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => HomeScreen(
                          ),
                        ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 260,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      DashedColorCircle(
                        dashes: 8,
                        size: 91,
                        strokeWidth: 0.81,
                        gapSize: 10,
                        emptyColor: Color(0xFFB5838D),
                      ),
                      DashedColorCircle(
                        dashes: 8,
                        size: 56,
                        strokeWidth: 0.81,
                        gapSize: 10,
                        emptyColor: Color(0xFFB5838D),
                      ),
                      Container(
                        width: 41,
                        height: 41,
                        decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                          'images/profile.jpg',
                        ),
                          fit: BoxFit.fill,
                        ),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: 0.50,
                              color: Color(0xFFB5838D),
                            ),
                          ),
                      ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 17),
                    child: Container(
                      width: 305,
                      height: 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF1E767680),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children:
                          [
                            Icon(
                              Icons.search,
                              size: 15.6,
                              color: Color(0xFF6D6875),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Search Products ...',
                              style: TextStyle(
                                color: Color(0x4C3C3C43),
                                fontSize: 15,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                                letterSpacing: -0.24,
                              ),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Icon(
                              Icons.mic,
                              size: 15.6,
                              color: Color(0xFF6D6875),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 17,),
                    child: Container(
                      width: 43,
                      height: 43,
                      decoration: ShapeDecoration(
                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        color: Color(0xFF6D6875),
                      ),
                      child: IconButton(
                        onPressed: (){},
                        icon: Image(
                          image: AssetImage(
                            'images/settings.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 428,
                height: 580,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(left: 62, top: 34),
                      child: Text(
                        'Gender',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          height: 1.31,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 62, top: 19,),
                      child: Row(
                        children: [
                          Container(
                            width: 95,
                            height: 44,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                              color: Color(0xFFB5838D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text(
                              'Men',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 95,
                            height: 44,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5989B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text(
                              'Women',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 95,
                            height: 44,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5989B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Text(
                              'Both',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w400,
                                height: 1.33,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 62, top: 38,),
                      child: Text(
                        'Price Rate',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 1.50,
                          letterSpacing: -0.40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 62, top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 16,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 32,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 14,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 16,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Color(0x33E5989B),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RangeSlider(
                      activeColor: Color(0xFF6D6875),
                      values: selectedRange,
                      max: 220,
                      min: 0.0,
                      divisions: 10,
                      onChanged: (RangeValues newRange)
                      {
                        setState(() {
                          selectedRange = newRange;
                        });
                      },
                    ),
                    Container(
                      width: 375,
                      height: 1,
                      decoration: BoxDecoration(color: Color(0x33E5989B)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 62, top: 25),
                      child: Text(
                        'Color',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 16,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 1.50,
                          letterSpacing: -0.40,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 62, top: 16,),
                      child: Row(
                        children:
                        [
                          ToggleButtons(
                              children:
                              [
                                Container(
                                  width: 44,
                                  height: 44,
                                  color: Color(0xFFB5838D),
                                ),
                                Container(
                                  width: 44,
                                    height: 44,
                                    color: Color(0xFFE5989B),
                                    ),
                                Container(
                                    width: 44,
                                    height: 44,
                                    color: Color(0xFFF8B6C3),
                                    ),
                                Container(
                                    width: 44,
                                    height: 44,
                                    color: Color(0xFFFFB4A2),
                                    ),
                                Container(
                                    width: 44,
                                    height: 44,
                                    color: Color(0xFF6D6875),
                                    ),
                                Container(
                                    width: 44,
                                    height: 44,
                                    color: Color(0xFF8F92A1),
                                    ),
                              ],
                              isSelected: selection,
                            onPressed: (int index)
                            {
                              setState(() {
                                selection[index] = !selection[index];

                              });
                            },

                            selectedColor: Colors.yellow,
                            fillColor: Colors.yellow,
                            borderRadius: BorderRadius.circular(14),
                            renderBorder: false,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27, top: 69),
                      child: Row(
                        children: [
                          Container(
                            width: 269,
                            height: 42,
                            decoration: ShapeDecoration(
                              color: Color(0xFFB5838D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 200,
                                    child: Text(
                                      'Apply Filter',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w400,
                                        height: 1.05,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Color(0xFFFFCDB2),
                                    size: 12,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Color(0xFFFFCDB6),
                                    size: 12,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Color(0xFFFFCDB2),
                                    size: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Container(
                            width: 88,
                            height: 42,
                            decoration: ShapeDecoration(
                              color: Color(0xFFE5989B),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: MaterialButton(
                              onPressed: (){},
                              child: Text(
                                'Reset',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w400,
                                  height: 1.05,
                                  letterSpacing: -0.32,
                                ),
                              ),
                            ),
                          ),
                        ],
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
      ),
    );
  }
}
