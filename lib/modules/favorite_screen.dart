import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class FavoriteScreen extends StatelessWidget {

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
          'My Favorite',
          style: TextStyle(
            color: Color(0xFF5F5A5A),
            fontSize: 15,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
            height: 0.09,
            letterSpacing: -0.50,
          ),
        ),
        actions:
        [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.favorite_border,
            ),
            color: Color(0xFF6D6875),
          ),
        ],
centerTitle: true,
      ),
        body:
        Container(
        width:double.infinity,
    color: Colors.white,
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 18, top: 78,),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
            [
              Column(
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
                          Icons.favorite,
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
              Column(
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
                          Icons.favorite,
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
              Column(
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
                          Icons.favorite,
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
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 19, top: 400,),
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
                    color: Color(0xFFB5838D),
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
    );
  }
}
