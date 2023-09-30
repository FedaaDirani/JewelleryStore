import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/failed.dart';
import 'package:jewelrey_store/modules/favorite_screen.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';

import 'successfully_pay.dart';

class CheckOut4 extends StatelessWidget {

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
        color: Colors.white,
        width: double.infinity,
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
                        backgroundColor: Color(0xFFC8C8C8),
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
                        backgroundColor: Color(0xFFB5838D),
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
              padding: const EdgeInsets.only(left: 16, top: 15),
              child: Text(
                'Order Check',
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
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 15),
              child: Row(
                children:
                [
                  Text(
                    'Shipping address',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 86,),
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
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 1, ),
              child: Container(
                width: 181,
                height: 92,
                child: Text(
                  'Ranim Omar\nDamascus-Alkaza-srt.x\n, 28294\n+963 997555668',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36,),
              child: Text(
                'Express Delivery',
                style: TextStyle(
                  color: Color(0xFF6D6875),
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 2,),
              child: Text(
                '1 -2 Hours',
                style: TextStyle(
                  color: Color(0xFF6D6875),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 20,),
              child: Container(
                width: 355,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.25,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF777777)
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Padding(
                    padding: const EdgeInsets.only(top: 14,),
                    child: Container(
                      width: 90,
                      height: 99,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                          side: BorderSide(
                            width: 0.50, color: Color(0xFFE5989B),
                          ),
                        ),

                      ),
                      child: Image(
                          image: AssetImage(
                            'images/p2.jpg'
                          ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14,),
                    child: Container(
                      width: 93,
                      height: 108,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'images/p15.jpg'
                          ),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFE5989B)),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                      ),
                  ),
                    ),
                  ),
                  SizedBox(
                    width: 135,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11,),
                    child: IconButton(
                      onPressed: (){},
                      icon: Image(
                        image: AssetImage(
                            'images/edit.jpg'
                        ),
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 15,),
              child: Container(
                width: 355,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.25,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFF777777)
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 32),
              child: Row(
                children:
                [
                  Text(
                    'SubTotal ( 2 product)',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.31,
                      letterSpacing: -0.32,
                    ),
                  ),
                  SizedBox(
                    width: 83,
                  ),
                  Text(
                    '\$ 537.08',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.31,
                      letterSpacing: -0.32,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 3),
              child: Row(
                children:
                [
                  Text(
                    'Delivery fee',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.31,
                      letterSpacing: -0.32,
                    ),
                  ),
                  SizedBox(
                    width: 149,
                  ),
                  Text(
                    '\$ 10.00',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.31,
                      letterSpacing: -0.32,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 20),
              child: Row(
                children:
                [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 1.29,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    width: 191,
                  ),
                  Text(
                    '\$ 547.08',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 1.29,
                      letterSpacing: -0.41,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 15),
              child: Row(
                children: [
                  Container(
                    width: 180,
                    height: 40,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      color: Color(0xFFE5989B),
                    ),
                    child: MaterialButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FailedScreen(
                          ),
                        ),
                        );
                      },
                      child: Text(
                        'Cancel Order',
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
                  SizedBox(
                    width: 27,
                  ),
                  Container(
                    width: 180,
                    height: 40,
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
                          builder: (context) => SuccessfullyPay(
                          ),
                        ),
                        );
                      },
                      child: Text(
                        'Continue Order',
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
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 20,),
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
                        onPressed: ()
                        {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => FavoriteScreen(
                            ),
                          ),
                          );
                        },
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
