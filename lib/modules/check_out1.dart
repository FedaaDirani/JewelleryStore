import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/check_out2.dart';
import 'package:jewelrey_store/modules/enter_the_information2.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/map.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';

class CheckOut1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyCart(
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
              padding: const EdgeInsets.only(left: 39,),
              child: Row(
                children: [
                  Column(
                    children:
                    [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFB5838D),
                        child: Text(
                          '1',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Delivery',
                        style: TextStyle(
                          color: Color(0xFFB5838D),
                          fontSize: 9,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Container(
                    width: 98,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.25,
                          strokeAlign: BorderSide.strokeAlignCenter,color: Color(0xFF777777),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children:
                    [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFC8C8C8),
                        child: Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Payment',
                        style: TextStyle(
                          color: Color(0xFFB5838D),
                          fontSize: 9,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Container(
                    width: 98,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.25,
                          strokeAlign: BorderSide.strokeAlignCenter,color: Color(0xFF777777),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children:
                    [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xFFC8C8C8),
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Order check',
                        style: TextStyle(
                          color: Color(0xFFB5838D),
                          fontSize: 9,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 19),
              child: Text(
                'Check your address',
                style: TextStyle(
                  color: Color(0xFF6D6875),
                  fontSize: 28,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w700,
                  height: 1.21,
                  letterSpacing: 0.36,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24),
              child: Container(
        width: 390,
        height: 44,
        child: Text(
          'Ranim',
          style: TextStyle(
              color: Color(0xFF6D6875),
              fontSize: 17,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w400,
              height: 1.29,
              letterSpacing: -0.41,
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                width: 0.50,
                color: Color(0xFF6D6875),
              ),
          ),
        ),
        ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24),
              child: Container(
                width: 390,
                height: 44,
                child: Text(
                  'Omar',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.29,
                    letterSpacing: -0.41,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.50,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24),
              child: Container(
                width: 390,
                height: 44,
                child: Text(
                  'Syria',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.29,
                    letterSpacing: -0.41,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.50,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24),
              child: Container(
                width: 390,
                height: 44,
                child: Text(
                  'Damascus',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.29,
                    letterSpacing: -0.41,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.50,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24),
              child: Container(
                width: 393,
                height: 44,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.50,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MapScreen(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select City on Map',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 17,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                          letterSpacing: -0.41,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 24),
              child: Container(
                width: 390,
                height: 44,
                child: Row(
                  children: [
                    Text(
                      '+963',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 17,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 1.29,
                        letterSpacing: -0.41,
                      ),
                    ),
                    SizedBox(
                      width: 43,
                    ),
                    Text(
                      '997555668',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 17,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        height: 1.29,
                        letterSpacing: -0.41,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.50,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 19,top: 17,),
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
                  padding: const EdgeInsets.only(left: 170,top: 17,),
                  child: OutlinedButton(
                    onPressed: (){},
                    child: Text(
                      'Update',
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 20),
              child: Container(
                width: 380,
                height: 47,
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
                      builder: (context) => CheckOut2(
                      ),
                    ),
                    );
                  },
                  child: Text(
                    'Continue To Payment',
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 9,),
              child: Container(
                width: 390,
                height: 50,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                    side: BorderSide(
                      width: 0.50,
                      color: Color(0xFFB5838D),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, ),
                  child: Row(
                    children:
                    [
                      IconButton(
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => HomeScreen(
                            ),
                          ),
                          );
                        },
                        icon: Icon(
                          Icons.home_filled,
                          size: 16,
                          color: Color(0xFF6D6875),
                        ),
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      IconButton(
                        icon: Icon( Icons.favorite_border_outlined,
                          size: 16,
                          color: Color(0xFF6D6875),
                        ),
                        onPressed: (){},
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      IconButton(
                        icon:Icon(
                          Icons.shopping_cart_outlined,
                          size: 16,
                          color: Color(0xFFB5838D),
                        ),
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MyCart(
                            ),
                          ),
                          );
                        },
                      ),
                      SizedBox(
                        width: 55,
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.person_outlined,
                          size: 16,
                          color: Color(0xFF6D6875),
                        ),
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MyProfile(
                            ),
                          ),
                          );
                        },
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
