import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/check_out1.dart';
import 'package:jewelrey_store/modules/check_out3.dart';
import 'package:jewelrey_store/modules/choose_payment_credit_card.dart';
import 'package:jewelrey_store/modules/choose_payment_via_alharam.dart';
import 'package:jewelrey_store/modules/choose_payment_via_bank_transfer.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';

class CheckOut2 extends StatelessWidget {

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
                builder: (context) => CheckOut1(
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
                        backgroundColor: Color(0xFFB5838D),
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
              padding: const EdgeInsets.only(left: 16, top: 22,),
              child: Row(
                children: [
                  Text(
                    'Choose Payment',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 22,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 1.27,
                      letterSpacing: 0.35,
                    ),
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    'Id 100',
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
              padding: const EdgeInsets.only(left: 16, top: 46),
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
                      builder: (context) => ChooosePaymentCreditCard(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Credit /Debit Card',
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
                        width: 215,
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
              padding: const EdgeInsets.only(left: 16, top: 46),
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
                      builder: (context) => ChoosePaymentViaBankTransfer(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Via Bank transfer',
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
                        width: 220,
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
              padding: const EdgeInsets.only(left: 16, top: 46),
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
                      builder: (context) => ChoosePaymentViaAlharam(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Via Alharam',
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
                        width: 250,
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
              padding: const EdgeInsets.only(left: 19, top: 60,),
              child: Text(
                'Please attachment your payment',
                style: TextStyle(
                  color: Color(0xFF6D6875),
                  fontSize: 17,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 1.29,
                  letterSpacing: -0.41,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 6,),
              child: Container(
                width: 389,
                height: 111,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  color: Color(0x26E5989B),
                ),
                child: Row(
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Image(
                        image: AssetImage(
                          'images/i.jpg'
                        ),
                        width: 105,
                        height: 105,
                      ),
                    ),
                    SizedBox(
                      width: 198,
                    ),
                    Image(
                      image: AssetImage(
                        'images/attach.jpg'
                      ),
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
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
                      builder: (context) => CheckOut3(
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
