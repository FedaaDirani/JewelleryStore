import 'package:dashed_color_circle/dashed_color_circle.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/modules/about_store.dart';
import 'package:jewelrey_store/modules/chating.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/favorite_screen.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/map.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/order_history.dart';
import 'package:jewelrey_store/modules/sign_in.dart';
import 'package:jewelrey_store/modules/test.dart';

class MyProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                SizedBox(
                  width: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 58,),
                  child: Container(
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
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 13,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 108,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 59),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        width: 131,
                        height: 132,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'images/profile.jpg',
                            ),
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(
                            side: BorderSide(
                              width: 0.50, color: Color(0xFFB5838D),
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 20,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        backgroundColor: Color(0xFFB5838D),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 127, top: 35),
              child: Text(
                'Fedaa Dirani',
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
              padding: const EdgeInsets.only(left: 123, top: 4),
              child: Text(
                'fedaa.dirani@gmail.com',
                style: TextStyle(
                  color: Color(0xFF6D6875),
                  fontSize: 16,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 1.31,
                  letterSpacing: -0.32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 35),
              child: Container(
                width: 395,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF6D6875),
                      width: 0.20,
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => OrderHistory(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    children:
                    [
                      Container(
                        width: 265,
                        child: Text(
                          'Orders History',
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
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFF6D6875),
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 30),
              child: Container(
                width: 395,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF6D6875),
                      width: 0.20,
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
                    children:
                    [
                      Container(
                        width: 265,
                        child: Text(
                          'My address',
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
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFF6D6875),
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 30),
              child: Container(
                width: 395,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF6D6875),
                      width: 0.20,
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Row(
                    children:
                    [
                      Container(
                        width: 265,
                        child: Text(
                          'My wallets',
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
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFF6D6875),
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 30),
              child: Container(
                width: 395,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF6D6875),
                      width: 0.20,
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Row(
                    children:
                    [
                      Container(
                        width: 265,
                        child: Text(
                          'Settings',
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
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFF6D6875),
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 30),
              child: Container(
                width: 395,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF6D6875),
                      width: 0.20,
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Chating(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    children:
                    [
                      Container(
                        width: 265,
                        child: Text(
                          'Chat With Store',
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
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFF6D6875),
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 30),
              child: Container(
                width: 395,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF6D6875),
                      width: 0.20,
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => AboutStore(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    children:
                    [
                      Container(
                        width: 265,
                        child: Text(
                          'About Store',
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
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFF6D6875),
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 30),
              child: Container(
                width: 395,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF6D6875),
                      width: 0.20,
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: ()
                  {
                    showAlertDialog(context);
                  },
                  child: Row(
                    children:
                    [
                      Container(
                        width: 265,
                        child: Text(
                          'Log out',
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
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFF6D6875),
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 47,),
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
                          color: Color(0xFF6D6875),
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
                          color: Color(0xFFB5838D),
                        ),
                        onPressed: (){},
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
  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        'Cancel',
          style: TextStyle(
            color: Color(0xFF6D6875),
            fontSize: 17,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
            height: 1.29,
            letterSpacing: -0.41,
        ),
      ),
      onPressed:  ()
      {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => MyProfile(
          ),
        ),
        );
      },
    );
    Widget yesButton = TextButton(
      child: Text(
          'Yes',
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Color(0xFF6D6875),
          fontSize: 17,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
          height: 1.29,
          letterSpacing: -0.41,
        ),
      ),
      onPressed:  ()
      {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => SignInScreen(
          ),
        ),
        );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
          'Log Out',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF6D6875),
          fontSize: 17,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
          height: 1.29,
          letterSpacing: -0.41,
        ),
      ),
      content: Text(
          'Are you sure you want to Log Out',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF6D6875),
          fontSize: 13,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
          height: 1.38,
          letterSpacing: -0.08,
        ),
      ),
      actions: [
        yesButton,
        cancelButton,
      ],
      backgroundColor: Colors.blueGrey[50],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(
          width: 0.50,
          color: Color(0xFF6D6875),
        ),
      ),
      buttonPadding: EdgeInsets.all(11),
      actionsAlignment: MainAxisAlignment.center,

    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
