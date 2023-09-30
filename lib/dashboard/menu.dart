import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/dashboard/categories.dart';
import 'package:jewelrey_store/dashboard/chats.dart';
import 'package:jewelrey_store/dashboard/dashboard_screen.dart';
import 'package:jewelrey_store/dashboard/log_in_admin.dart';
import 'package:jewelrey_store/dashboard/products.dart';
import 'package:jewelrey_store/dashboard/users.dart';

import '../adaptive/constants.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0x19FFCDB2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
            Container(
              width: 300,
              height: 749,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                color: Color(0xFF6D6875),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:
                    [
                      Padding(
                        padding: const EdgeInsets.only(top: 24,left: 0),
                        child: Transform.scale(
                          scaleY: -1,
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.sort_rounded,
                              size: 38,
                              color: Color(0xFFB5838D),

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28, left: 60),
                        child: Text(
                          'Admin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w700,
                            height: 0.04,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                    ],
                  ),
                  MaterialButton(
                    onPressed:()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DashboardScreen(
                        ),
                      ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 21, left: 5),
                          child: Icon(
                              Icons.grid_view,
                            size: 24,
                            color: Color(0xFFFFCDB2),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Dashboard',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFCDB2),
                            fontSize: 24,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.8,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Categories(
                        ),
                      ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 21, left: 5),
                          child: Icon(
                            Icons.copy,
                            size: 24,
                            color: Color(0xFFFFCDB2),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Categories',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFCDB2),
                            fontSize: 24,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.8,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Products(
                        ),
                      ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 21, left: 5),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 24,
                            color: Color(0xFFFFCDB2),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Products',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFCDB2),
                            fontSize: 24,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.8,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Users(
                        ),
                      ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 21, left: 5),
                          child: Image(
                            image: AssetImage(
                              'images/users.jpg',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Users',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFCDB2),
                            fontSize: 24,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.8,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Chats(
                        ),
                      ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 21, left: 5),
                          child: Image(
                            image: AssetImage(
                              'images/message-circle.jpg',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Chat',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFCDB2),
                            fontSize: 24,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.8,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),

                  MaterialButton(
                    onPressed: ()
                    {
                      showAlertDialog(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 21, left: 17),
                          child: Icon(
                            Icons.logout,
                            size: 24,
                            color: Color(0xFFFFCDB2),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Log Out',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFCDB2),
                            fontSize: 24,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 0.8,
                            letterSpacing: -0.41,
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
          builder: (context) => Menu(
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
          builder: (context) => LogInAdmin(
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
