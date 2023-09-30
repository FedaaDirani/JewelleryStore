import 'package:dashed_color_circle/dashed_color_circle.dart';
import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/filter_screen.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';
import 'package:jewelrey_store/shared/components.dart';

class SeeMoreScreen extends StatelessWidget {

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
                children:
                [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 33),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        CircleAvatar(
                          radius: 20,
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
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Categories, Bags',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 33),
                    child: Stack(
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
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 17),
                    child: Container(
                      width: 305,
                      height: 34,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
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
                              size: 17,
                              color: Color(0xFF6D6875),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 17,),
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
                      offset: Offset(2, 3),
                      spreadRadius: 0,
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
                height: 22,
              ),
              Row(
                children:
                [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Container(
                      width: 52,
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
                          'All',
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
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Container(
                      width: 65,
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
                          'Bags',
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
                    padding: const EdgeInsets.only(left: 10, top: 10),
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
                    padding: const EdgeInsets.only(left: 10, top: 10),
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
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Container(
                      width: 90,
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
                      padding: const EdgeInsets.only(left: 7, top: 31),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:
                        [
                          Container(
                            width: 121,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            child: Image(
                              image: AssetImage(
                                'images/p7.jpg',
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
                            'loria',
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
                                '\$ 100.90',
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
                      padding: const EdgeInsets.only(left: 7, top: 31),
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
                                'images/p8.jpg',
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
                                '\$ 200.00',
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
                      padding: const EdgeInsets.only(left: 7, top: 31),
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
                                'images/p9.jpg',
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
                            'gray',
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
                                '\$ 150.00',
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
                      padding: const EdgeInsets.only(left: 7, top: 18),
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
                                'images/p10.jpg',
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
                                '\$ 10.90',
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
                      padding: const EdgeInsets.only(left: 7, top: 18),
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
                                'images/p11.jpg',
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
                                '\$ 200.00',
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
                      padding: const EdgeInsets.only(left: 7, top: 18),
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
                                'images/p12.jpg',
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
                                '\$ 10.00',
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
                      padding: const EdgeInsets.only(left: 7, top: 18),
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
                                'images/p13.jpg',
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
                                '\$ 10.90',
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
                      padding: const EdgeInsets.only(left: 7, top: 18),
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
                                'images/p14.jpg',
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
                                '\$ 200.00',
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
                      padding: const EdgeInsets.only(left: 7, top: 18),
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
                                'images/p15.jpg',
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
                                '280.00',
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
                          Text(
                            '\$ 402.00',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 9,
                              fontFamily: 'Poppins',
                              color: Color(0xFF6D6875),
                              decoration: TextDecoration.lineThrough,

                            ),
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
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => HomeScreen(
                              ),
                            ),
                            );
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
