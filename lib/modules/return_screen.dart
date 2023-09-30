import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';

class ReturnScreen extends StatefulWidget {

  @override
  State<ReturnScreen> createState() => _ReturnScreenState();
}

class _ReturnScreenState extends State<ReturnScreen> {
  String dropdownValue = 'Damaged due to poor packaging';
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
          'Return',
          style: TextStyle(
            color: Color(0xFF5F5A5A),
            fontSize: 15,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
            height: 1.33,
            letterSpacing: -0.50,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Container(
          width: 389,
          height: 326,
          decoration: ShapeDecoration(
            color: Color(0x26E5989B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Padding(
                padding: const EdgeInsets.only(left: 11,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            width: 90,
                            height: 99,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/p2.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Color(0xFFC8C8C8),
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Color(0xFFF3BFAA),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            'Bags',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 17,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 1.29,
                              letterSpacing: -0.41,
                            ),
                          ),
                          Text(
                            'Antelope',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 1.33,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Shipped: Aug 19,2023',
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
                            height: 11,
                          ),
                          Text(
                            'Quantity to return: 1',
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
                      padding: const EdgeInsets.only(top: 8),
                      child: Container(
                        width: 124,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Color(0xFFE5989B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: MaterialButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                            [
                              Icon(
                                Icons.monetization_on_outlined,
                                size: 11,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                'Return back',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9, top: 14),
                child: Text(
                  'Why are you returning this',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 11,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    height: 1.18,
                    letterSpacing: 0.06,
                  ),
                ),
              ),
              DropdownButton(
                  items: [
                    DropdownMenuItem(
                      child: Text('Damaged due to poor packaging',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 6,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                          letterSpacing: 0.07,
                        ),
                      ),
                    value: 'Damaged due to poor packaging',
                    ),
                    DropdownMenuItem(
                      child: Text(
                        'No longer needed',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 6,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                          letterSpacing: 0.07,
                        ),),
                    value: 'No longer needed',
                    ),
                    DropdownMenuItem(
                      child: Text(
                        'Item arrived to late',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 6,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                          letterSpacing: 0.07,
                        ),
                      ),
                    value:  'Item arrived to late',
                    ),
                  ],
                  onChanged: (String? value)
                  {
                    setState(() {
                      dropdownValue = value! ;
                    });
                  },
                icon: Icon(Icons.keyboard_arrow_up,),
                iconSize: 12,
                iconEnabledColor: Color(0xFF6D6875),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9, top: 5),
                child: Container(
                  alignment: Alignment.topLeft,
                  width: 170,
                  height: 97,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Your comments here',
                      hintStyle: TextStyle(
                        fontSize: 6,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.07,
                        color: Color(0xFF6D6875),
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 19,
                    height: 9,
                    child: Text(
                        'NOTE:',
                      style: TextStyle(
                        color: Color(0xFFB5838D),
                        fontSize: 6,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,

                        letterSpacing: 0.06,
                      ),
                    ),
                  ),
                  Container(
                    width: 149,
                    height: 28,
                    child: Text(
                      'We aren’t able to offer policy exception or special handling in response to comments entered on this page.',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 6,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,

                        letterSpacing: 0.07,
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
      ),
    );
  }
}
