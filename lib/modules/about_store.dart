import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/favorite_screen.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';
import 'package:jewelrey_store/shared/arrow_back.dart';
import 'package:jewelrey_store/shared/components.dart';

class AboutStore extends StatelessWidget {
  int currentIndex = 0 ;
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
                builder: (context) => MyProfile(
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
        title: Text(
          'Mari Bosa',
          style: TextStyle(
            color: Color(0xFFB5838D),
            fontSize: 28,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w700,
            height: 0.04,
            letterSpacing: 0.36,
          ),
        ),
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
        padding: const EdgeInsets.only(left: 37, top: 61,),
        child: Container(
          width: 355,
          height: 164,
          child: Text(

            'Mari Bosa is part of the Global Fashion Group, the worlds leading fashion group. Founded in 2020 and dedicated to creating online fashion companies in developing countries. To date, Global Fashion Group operates in 27 countries. Global Fashion Group has a presence in Indonesia, South East, South America and Europe. Through MARI BOSA, Global Fashion Group is able to access markets in Southeast Asia, while MARI BOSA is trying to become a fashion destination in Southeast Asia.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w400,
              height: 1.33,
            ),
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
