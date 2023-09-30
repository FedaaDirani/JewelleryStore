import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/check_out2.dart';
import 'package:jewelrey_store/modules/check_out3.dart';
import 'package:jewelrey_store/modules/choose_payment_via_alharam.dart';
import 'package:jewelrey_store/modules/choose_payment_via_bank_transfer.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';

class ChooosePaymentCreditCard extends StatelessWidget {

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
                builder: (context) => CheckOut2(
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
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

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
                  onPressed: (){},
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
                        Icons.keyboard_arrow_up_sharp,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 393,
                  height: 33,
                  color: Color(0xFF6D6875),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 19,),
                    child: Row(
                      children:
                      [
                        Icon(
                          Icons.lock,
                          color: Colors.white,
                          size: 18,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'This is a secure 128-bit SSL Encrypted payment. You’re safe',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 393,
                  height: 250,
                  color: Color(0xFFEEEEEE),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children:
                            [
                              Image(
                                  image: AssetImage(
                                    'images/credit1.jpg'
                                  ),
                                width: 38,
                                height: 14,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Image(
                                  image: AssetImage(
                                    'images/credit2.jpg'
                                  ),
                                width: 23,
                                height: 13,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Image(
                                  image: AssetImage(
                                    'images/credit3.jpg'
                                  ),
                                width: 19,
                                height: 13,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Image(
                                  image: AssetImage(
                                    'images/credit4.jpg'
                                  ),
                                width: 32,
                                height: 16,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 369,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Card Number',
                              hintStyle: TextStyle(
                                  color: Color(0xFF777777),
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 369,
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Name On Card',
                              hintStyle: TextStyle(
                                  color: Color(0xFF777777),
                                  fontSize: 11,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 173,
                              child: TextFormField(
                                keyboardType: TextInputType.datetime,
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.keyboard_arrow_down_sharp),
                                  hintText: 'Exp MM/YYYY',
                                  hintStyle: TextStyle(
                                      color: Color(0xFF777777),
                                      fontSize: 11,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Container(
                              width: 173,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: 'CVV',
                                  hintStyle: TextStyle(
                                    color: Color(0xFF777777),
                                    fontSize: 11,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 37, top: 39,),
                          child: Text(
                            'You will not be charged until the order process is complete',
                          style: TextStyle(
                            color: Color(0xFF777777),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 393,
                  height: 36,
                  color: Color(0xFF6D6875),
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
                        'ORDER CHECK',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 4),
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
              padding: const EdgeInsets.only(left: 16, top: 26),
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
