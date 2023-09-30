import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/dashboard/add_catg.dart';
import 'package:jewelrey_store/dashboard/edit_categories.dart';
import 'package:jewelrey_store/dashboard/menu.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0x19FFCDB2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            SizedBox(
              height: 25,
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
              padding: const EdgeInsets.only(left: 16, top: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:
                [
                  Text(
                    'Categories',
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
                  SizedBox(
                    width: 137,
                  ),
                  Container(
                    width: 139,
                    height: 32,
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
                          builder: (context) => AddCatg(
                          ),
                        ),
                        );
                      },
                      child: Text(
                        '+ Categories',
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
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                SizedBox(
                  width: 14,
                ),
                Text(
                  'Select',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.41,
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  'Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.41,
                  ),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 14,
                  color: Color(0xFF667085),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  'Description',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.41,
                  ),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 14,
                  color: Color(0xFF667085),
                ),
                SizedBox(
                  width: 35,
                ),
                Text(
                  'View',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 0.08,
                    letterSpacing: -0.41,
                  ),
                ),
              ],
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
            SizedBox(
              height: 24,
            ),
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Color(0x26E5989B),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  SizedBox(
                    width: 15,
                  ),
                  Checkbox(
                    value: check1,
                    checkColor: Color(0xFF6D6875),
                    onChanged: (bool? value){
                      setState(() {
                        check1 = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Text(
                    'Bags',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    width: 63,
                  ),
                  Container(
                    width: 45,

                    child: Text(
                      'Text body',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 67,
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      showAlertDialog(context);
                    },
                    icon: Icon(
                        Icons.delete_outline,
                      size: 17,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EditCategories(
                        ),
                      ),
                      );
                    },
                    icon: Image(
                      image: AssetImage(
                        'images/edit.jpg',
                      ),
                      width: 17,
                      height: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Color(0x26E5989B),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  SizedBox(
                    width: 15,
                  ),
                  Checkbox(
                    value: check2,
                    checkColor: Color(0xFF6D6875),
                    onChanged: (bool? value){
                      setState(() {
                        check2 = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Text(
                    'Watches',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    width: 41,
                  ),
                  Container(
                    width: 45,

                    child: Text(
                      'Text body',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 67,
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      showAlertDialog(context);
                    },
                    icon: Icon(
                        Icons.delete_outline,
                      size: 17,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EditCategories(
                        ),
                      ),
                      );
                    },
                    icon: Image(
                      image: AssetImage(
                        'images/edit.jpg',
                      ),
                      width: 17,
                      height: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Color(0x26E5989B),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  SizedBox(
                    width: 15,
                  ),
                  Checkbox(
                    value: check3,
                    checkColor: Color(0xFF6D6875),
                    onChanged: (bool? value){
                      setState(() {
                        check3 = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Text(
                    'Rings',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    width: 45,

                    child: Text(
                      'Text body',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 67,
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      showAlertDialog(context);
                    },
                    icon: Icon(
                        Icons.delete_outline,
                      size: 17,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EditCategories(
                        ),
                      ),
                      );
                    },
                    icon: Image(
                      image: AssetImage(
                        'images/edit.jpg',
                      ),
                      width: 17,
                      height: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Color(0x26E5989B),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  SizedBox(
                    width: 15,
                  ),
                  Checkbox(
                    value: check4,
                    checkColor: Color(0xFF6D6875),
                    onChanged: (bool? value){
                      setState(() {
                        check4 = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Text(
                    'earing',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    width: 56,
                  ),
                  Container(
                    width: 45,

                    child: Text(
                      'Text body',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 67,
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      showAlertDialog(context);
                    },
                    icon: Icon(
                        Icons.delete_outline,
                      size: 17,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EditCategories(
                        ),
                      ),
                      );
                    },
                    icon: Image(
                      image: AssetImage(
                        'images/edit.jpg',
                      ),
                      width: 17,
                      height: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Color(0x26E5989B),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  SizedBox(
                    width: 15,
                  ),
                  Checkbox(
                    value: check5,
                    checkColor: Color(0xFF6D6875),
                    onChanged: (bool? value){
                      setState(() {
                        check5 = value!;
                      });
                    },
                  ),
                  SizedBox(
                    width: 33,
                  ),
                  Text(
                    'necklace',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 45,

                    child: Text(
                      'Text body',
                      style: TextStyle(
                        color: Color(0xFF6D6875),
                        fontSize: 14,
                        fontFamily: 'SF Pro Text',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.41,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 67,
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      showAlertDialog(context);
                    },
                    icon: Icon(
                        Icons.delete_outline,
                      size: 17,
                      color: Color(0xFF6D6875),
                    ),
                  ),
                  IconButton(
                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => EditCategories(
                        ),
                      ),
                      );
                    },
                    icon: Image(
                      image: AssetImage(
                        'images/edit.jpg',
                      ),
                      width: 17,
                      height: 17,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 250,
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
              padding: const EdgeInsets.only(left: 18, top: 5,),
              child: Row(
                children: [
                  Container(
                    width: 85,
                    height: 38,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          width: 0.50,
                          color: Color(0xFF6D6875),
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      child: Text(
                        'Previous',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 14,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                          letterSpacing: -0.41,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 74,
                  ),
                  Text(
                    'Page 1 of 1',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 0.11,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Container(
                    width: 65,
                    height: 38,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          width: 0.50,
                          color: Color(0xFF6D6875),
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Color(0xFF6D6875),
                          fontSize: 14,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
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
      onPressed:  () {},
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
      onPressed:  () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Icon(
        Icons.info_outline,
        color: Colors.red,
        size: 24,
      ),
      content: Text(
        'Are you sure you want to delete this user?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF6D6875),
          fontSize: 13,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
          height: 0.11,
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
