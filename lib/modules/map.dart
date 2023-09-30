import 'package:flutter/material.dart';
import 'package:jewelrey_store/modules/check_out1.dart';
import 'package:jewelrey_store/modules/favorite_screen.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';

class MapScreen extends StatelessWidget {

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
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
              color: Color(0xFF6D6875),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, ),
            child: Container(
              width: 382,
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
                      color: Color(0xFF6D6875),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Enter Your City ...',
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
                      width: 220,
                    ),
                    Icon(
                      Icons.mic,
                      size: 15.6,
                      color: Color(0xFF6D6875),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image(
                image: AssetImage(
                  'images/map.jpg',
                ),
                width: 396,
                height: 540,
              ),
              Image(
                image: AssetImage(
                  'images/Bullet.jpg',
                ),
                width: 396,
                height: 540,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 302,),
            child: OutlinedButton(
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => CheckOut1(
                  ),
                ),
                );
              },
              child: Text(
                'Save',
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
        ],
      ),
    );
  }
}
