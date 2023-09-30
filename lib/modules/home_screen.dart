import 'dart:math';

import 'package:dashed_color_circle/dashed_color_circle.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/modules/filter_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';
import 'package:jewelrey_store/modules/product.dart';
import 'package:jewelrey_store/modules/see_more_and_categories.dart';
import 'package:jewelrey_store/shared/components.dart';
import 'package:jewelrey_store/shared/trapezium_clipper.dart';
import 'package:jewelrey_store/shared/triangle_painter.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
        width:double.infinity,
    color: Colors.white,
    child: SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Transform.scale(
                    scaleY: -1,
                    child: IconButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MyProfile(
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
                  Text(
                    'Welcome, Fedaa',
                    style: TextStyle(
                      color: Color(0xFF5F5A5A),
                      fontSize: 15,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                      letterSpacing: -0.24,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              width: 190,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 6),
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
                        color: Color(0xFF3C3C4399),
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
                        color: Color(0xFF3C3C4399),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 24),
              child: Container(
                width: 43,
                height: 43,
                decoration: ShapeDecoration(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  color: Color(0xFF6D6875),
                  shadows: [
                    BoxShadow(
                      color: Color(0xFF6D6875),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(2,3),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => FilterScreen(
                      ),
                    ),
                    );
                  },
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
          height: 10,
        ),
        Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              width: double.infinity,
              color: Color(0xFFE5989B),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  Transform.scale(
                    scaleY: -1,
                    child: ClipPath(
                      clipper: TrapeziumClipper(),
                      child: Container(
                        width: 300,
                        height: 190,
                        color: Color(0xFFE5989B),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * 6/15
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Transform.scale(
                    scaleX: -1,
                    child: ClipPath(
                      clipper: TrapeziumClipper(),
                      child: Container(
                        height: 190,
                        color: Color(0xFFB5838D),
                        width: 214,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * 6/15
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),
            Image(
                image: AssetImage(
                  'images/bag.png',
                ),
              width: 320,
              height: 205,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 264, top: 40),
              child: Column(
                children: [
                  Text(
                    'Discount of all types of\naccessories',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 1.38,
                      letterSpacing: -0.08,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 107,
                        height: 28,
                        color: Color(0xFFE5989B),
                        child: Text(
                          'Up to 30 %',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w800,
                            height: 1.29,
                            letterSpacing: -0.08,
                          ),
                        ),
                      ),
                      Image(
                          image: AssetImage(
                            'images/ring.png',
                          ),
                        width: 40,
                        height: 59,
                      ),
                    ],
                  ),
                  Text(
                    'only on the night sale 10-13 october',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.18,
                      letterSpacing: 0.07,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            Padding(
              padding: const EdgeInsets.only(left: 12,),
              child: Container(
                width: 52,
                height: 26,
                decoration: ShapeDecoration(
                  color: Color(0xFFE5989B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(
                      width: 2,
                      color: Color(0xFFE5989B),
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    'All',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: Container(
                width: 65,
                height: 26,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(
                      width: 2,
                      color: Color(0xFFE5989B),
                    ),
                  ),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => SeeMoreScreen(
                      ),
                    ),
                    );
                  },
                  child: Text(
                    'Bags',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE5989B),
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: Container(
                width: 65,
                height: 26,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(
                      width: 2,
                      color: Color(0xFFE5989B),
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    'Rings',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE5989B),
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: Container(
                width: 85,
                height: 26,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(
                      width: 2,
                      color: Color(0xFFE5989B),
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    'necklace',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE5989B),
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,),
              child: Container(
                width: 85,
                height: 26,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                ),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: StadiumBorder(),
                    side: BorderSide(
                      width: 2,
                      color: Color(0xFFE5989B),
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    'earring',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE5989B),
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.38,
                      letterSpacing: -0.08,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
            [
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Container(
                      width: 121,
                      height: 92,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: Image(
                        image: AssetImage(
                          'images/p1.jpg',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                      [
                        Text(
                          'Rings',
                          style: TextStyle(
                            color: Color(0xFF161616),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFE5989B),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'Cream elegant',
                      style: TextStyle(
                        color: Color(0xFFA3A3A3),
                        fontSize: 8,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children:
                      [
                        Text(
                            '10.90',
                          style: TextStyle(
                            color: Color(0xFFE5989B),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB6),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    MaterialButton(

                      child: Container(
                        width: 121,
                        height: 92,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: Image(
                          image: AssetImage(
                            'images/p2.jpg',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Product(
                          ),
                        ),
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                      [
                        Text(
                          'Bags',
                          style: TextStyle(
                            color: Color(0xFF161616),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFE5989B),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'Antelope',
                      style: TextStyle(
                        color: Color(0xFFA3A3A3),
                        fontSize: 8,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children:
                      [
                        Text(
                            '200.00',
                          style: TextStyle(
                            color: Color(0xFFE5989B),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB6),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Container(
                      width: 121,
                      height: 92,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: Image(
                        image: AssetImage(
                          'images/p3.jpg',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                      [
                        Text(
                          'Rings',
                          style: TextStyle(
                            color: Color(0xFF161616),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFE5989B),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'Antelope',
                      style: TextStyle(
                        color: Color(0xFFA3A3A3),
                        fontSize: 8,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children:
                      [
                        Text(
                            '10.00',
                          style: TextStyle(
                            color: Color(0xFFE5989B),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB6),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
            [
              Padding(
                padding: const EdgeInsets.only(left: 7, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Container(
                      width: 121,
                      height: 92,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: Image(
                        image: AssetImage(
                          'images/p4.jpg',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                      [
                        Text(
                          'Rings',
                          style: TextStyle(
                            color: Color(0xFF161616),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFE5989B),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'Cream elegant',
                      style: TextStyle(
                        color: Color(0xFFA3A3A3),
                        fontSize: 8,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children:
                      [
                        Text(
                            '10.90',
                          style: TextStyle(
                            color: Color(0xFFE5989B),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB6),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Container(
                      width: 121,
                      height: 92,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: Image(
                        image: AssetImage(
                          'images/p5.jpg',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                      [
                        Text(
                          'Bags',
                          style: TextStyle(
                            color: Color(0xFF161616),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFE5989B),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'Antelope',
                      style: TextStyle(
                        color: Color(0xFFA3A3A3),
                        fontSize: 8,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children:
                      [
                        Text(
                            '200.00',
                          style: TextStyle(
                            color: Color(0xFFE5989B),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB6),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:
                  [
                    Container(
                      width: 121,
                      height: 92,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      child: Image(
                        image: AssetImage(
                          'images/p6.jpg',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                      [
                        Text(
                          'Rings',
                          style: TextStyle(
                            color: Color(0xFF161616),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xFFE5989B),
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                    Text(
                        'Antelope',
                      style: TextStyle(
                        color: Color(0xFFA3A3A3),
                        fontSize: 8,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children:
                      [
                        Text(
                            '10.00',
                          style: TextStyle(
                            color: Color(0xFFE5989B),
                            fontSize: 9,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 62,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB6),
                          size: 12,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color(0xFFFFCDB2),
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 350,),
          child: TextButton(
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SeeMoreScreen(
                ),
              ),
              );
            },
            child: Text(
              'See more',
              style: TextStyle(
                color: Color(0xFF6D6875),
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19,),
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

                    },
                    icon: Icon(
                      Icons.home_filled,
                      size: 16,
                      color: Color(0xFFB5838D),
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

      ],
      ),
    ),
        ),
    );
  }
}
