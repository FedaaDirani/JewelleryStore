import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_cart.dart';
import 'package:jewelrey_store/modules/my_profile.dart';

class OrderHistory extends StatelessWidget {

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
          'Order History',
          style: TextStyle(
            color: Color(0xFF5F5A5A),
            fontSize: 15,
            fontFamily: 'SF Pro Text',
            fontWeight: FontWeight.w600,
            height: 1.33,
            letterSpacing: -0.50,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 11, top: 15),
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
                  padding: const EdgeInsets.only(left: 11, top: 15),
                  child: Container(
                    width: 75,
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
                        'Facked',
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
                  padding: const EdgeInsets.only(left: 11, top: 15),
                  child: Container(
                    width: 69,
                    height: 26,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      ),
                      color: Color(0xFFE5989B),
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
                        'Done',
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
                  padding: const EdgeInsets.only(left: 11, top: 15),
                  child: Container(
                    width: 75,
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
                        'Cancel',
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
                  padding: const EdgeInsets.only(left: 11, top: 15),
                  child: Container(
                    width: 75,
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
                        'Return',
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 33),
              child: Container(
                width: 376,
                height: 111,
                decoration: ShapeDecoration(
                  color: Color(0x26E5989B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'TODAY, 12:10 AM',
                              style: TextStyle(
                                color: Color(0xFF6D6875),
                                fontSize: 17,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 1.29,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Ranim Omar\nDamascus-Alkaza-srt.x\n, 28294\n+963 997555668',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 1.18,
                              letterSpacing: 0.07,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11,),
                      child: Icon(
                        Icons.lock,
                        size: 14,
                        color: Color(0xFF6D6875),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, top: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            'Bags',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 17,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 1.29,
                              letterSpacing: -0.41,
                            ),
                          ),
                          Text(
                            'Antelope',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 1.33,
                            ),
                          ),
                          SizedBox(
                            height: 47,
                          ),
                          Text(
                            '( Item 1 )',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 1.18,
                              letterSpacing: 0.07,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, right: 6, bottom: 6,),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            width: 90,
                            height: 99,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/p2.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Color(0xFFC8C8C8),
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Color(0xFFF3BFAA),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 6),
              child: Container(
                width: 376,
                height: 111,
                decoration: ShapeDecoration(
                  color: Color(0x26E5989B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'TODAY, 12:10 AM',
                              style: TextStyle(
                                color: Color(0xFF6D6875),
                                fontSize: 17,
                                fontFamily: 'SF Pro Text',
                                fontWeight: FontWeight.w600,
                                height: 1.29,
                                letterSpacing: -0.41,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            'Ranim Omar\nDamascus-Alkaza-srt.x\n, 28294\n+963 997555668',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 1.18,
                              letterSpacing: 0.07,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 11,),
                      child: Icon(
                        Icons.lock,
                        size: 14,
                        color: Color(0xFF6D6875),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4, top: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            'Bags',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 17,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 1.29,
                              letterSpacing: -0.41,
                            ),
                          ),
                          Text(
                            'Antelope',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 12,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 1.33,
                            ),
                          ),
                          SizedBox(
                            height: 47,
                          ),
                          Text(
                            '( Item 1 )',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 1.18,
                              letterSpacing: 0.07,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6, right: 6, bottom: 6,),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            width: 90,
                            height: 99,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'images/p15.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            radius: 9,
                            backgroundColor: Color(0xFFC8C8C8),
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Color(0xFF737476),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 341),
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
