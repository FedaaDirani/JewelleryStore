import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:jewelrey_store/modules/check_out1.dart';
import 'package:jewelrey_store/modules/home_screen.dart';
import 'package:jewelrey_store/modules/my_profile.dart';

class MyCart extends StatefulWidget {
  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int item = 1;

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
                builder: (context) => HomeScreen(
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
          'My Cart',
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
        actions:
        [
          IconButton(
            onPressed: (){},
            icon: Image(
            image: AssetImage(
              'images/cart.jpg',
            ),
          ),
          ),
        ],
          ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Padding(
              padding: const EdgeInsets.only(top: 33, left: 20, right: 19),
              child: Container(
                width: 373,
                height: 111,
                decoration: ShapeDecoration(
                  color: Color(0x26E5989B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Row(
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 6, bottom: 6),
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
                            radius: 10,
                            backgroundColor: Color(0xFFC8C8C8),
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Color(0xFFF3BFAA),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 6,),
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
                            height: 21,
                          ),
                          Text(
                            '\$ 256.90',
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
                      padding: const EdgeInsets.only(left: 110, top: 5,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                        [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.delete_outline,
                            ),
                          ),
                          Row(
                            children:
                            [
                              IconButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    item--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 9,
                                  color: Color(0xFF6D6875),
                                ),
                              ),
                              Text(
                                '${item}',
                                style: TextStyle(
                                  color: Color(0xFF6D6875),
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w600,
                                  height: 1.38,
                                  letterSpacing: -0.08,
                                ),
                              ),
                              IconButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    item++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 9,
                                  color: Color(0xFF6D6875),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7, left: 20, right: 19),
              child: Container(
                width: 373,
                height: 111,
                decoration: ShapeDecoration(
                  color: Color(0x26E5989B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Row(
                  children:
                  [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 6, bottom: 6),
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
                            radius: 10,
                            backgroundColor: Color(0xFFC8C8C8),
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: Color(0xFF737476),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 6,),
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
                            height: 21,
                          ),
                          Text(
                            '\$ 280.90',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 11,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 1.18,
                              letterSpacing: 0.07,
                            ),
                          ),
                          Text(
                            '\$402.00',
                            style: TextStyle(
                              color: Color(0xFF6D6875),
                              fontSize: 6,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110, top: 5,),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:
                        [
                          IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.delete_outline,
                            ),
                          ),
                          Row(
                            children:
                            [
                              IconButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    item--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 9,
                                  color: Color(0xFF6D6875),
                                ),
                              ),
                              Text(
                                '${item}',
                                style: TextStyle(
                                  color: Color(0xFF6D6875),
                                  fontSize: 13,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.w600,
                                  height: 1.38,
                                  letterSpacing: -0.08,
                                ),
                              ),
                              IconButton(
                                onPressed: ()
                                {
                                  setState(() {
                                    item++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 9,
                                  color: Color(0xFF6D6875),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              width: 355,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.25,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFF777777),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36,),
              child: Text(
                'Order info',
                style: TextStyle(
                  color: Color(0xFF6D6875),
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  height: 1.27,
                  letterSpacing: 0.35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 37, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text(
                    'SubTotal',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.31,
                      letterSpacing: -0.32,
                    ),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Text(
                    '\$ 537.08',
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
              padding: const EdgeInsets.only(left: 37, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text(
                    'Delivery fee',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.31,
                      letterSpacing: -0.32,
                    ),
                  ),
                  SizedBox(
                    width: 172,
                  ),
                  Text(
                    '\$ 10.00',
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
              padding: const EdgeInsets.only(left: 37, top: 16),              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text(
                    'Discount',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 16,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.31,
                      letterSpacing: -0.32,
                    ),
                  ),
                  SizedBox(
                    width: 189,
                  ),
                  Text(
                    '\$ 121.10',
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
              padding: const EdgeInsets.only(left: 37, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 1.29,
                      letterSpacing: -0.41,
                    ),
                  ),
                  SizedBox(
                    width: 215,
                  ),
                  Text(
                    '\$ 547.08',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 17,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 1.29,
                      letterSpacing: -0.41,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 135, top: 26,),
              child: Container(
                width: 167,
                height: 35,
                decoration: ShapeDecoration(
                  color: Color(0xFFB5838D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: MaterialButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => CheckOut1(
                      ),
                    ),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'Check Out',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w400,
                          height: 1.05,
                          letterSpacing: -0.32,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFFFFCDB2),
                        size: 12,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFFFFCDB6),
                        size: 12,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Color(0xFFFFCDB2),
                        size: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19, top: 20),
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

          ],
        ),
      ),
    );
  }
}

