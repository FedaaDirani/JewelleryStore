import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/modules/my_cart.dart';

class Product extends StatefulWidget {

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int Amount  = 1;
  List<bool> selection = [true,false,false,false,];
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
        title: Text(
          'Product Page',
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
          Padding(
            padding: const EdgeInsets.only( top: 20,),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(
                  Icons.shopping_bag,
                  size: 20,
                  color: Color(0xFF6D6875),
                ),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Color(0xFFFFCDB2),
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Color(0xFF6D6875),
                      fontSize: 3.83,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [
          Padding(
            padding: const EdgeInsets.only(left: 84,),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Image(
                    image: AssetImage(
                      'images/p2.jpg',
                    ),
                  height: 350,
                  width: 371,
                  fit: BoxFit.cover,
                ),
                Icon(
                  Icons.share_outlined,
                  size: 24,
                  color: Color(0xFF6D6875),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90, top: 330,),
                  child: Container(
                    width: 107,
                    height: 31,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color(0xE56D6875),
                    ),
                    child: Row(
                      children:
                      [
                        IconButton(
                          onPressed: ()
                          {
                            setState(() {
                              Amount --;
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                            '${Amount}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            height: 1.05,
                            letterSpacing: -0.32,
                          ),
                        ),
                        IconButton(
                          onPressed: ()
                          {
                            setState(() {
                              Amount ++;
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 6,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Column(
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
                  ],
                ),
                SizedBox(
                  width: 243,
                ),
                Text(
                  '\$ 256.90',
                  style: TextStyle(
                    color: Color(0xFFE5989B),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 8),
            child: Text(
              'COLOR',
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
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 6,),
            child: Row(
              children:
              [
                ToggleButtons(
                    children:
                    [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Color(0xFFF3BFAA),
                          shape: OvalBorder(),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Color(0xFF8D98F6),
                          shape: OvalBorder(),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Color(0xFF161616),
                          shape: OvalBorder(),
                        ),
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Color(0xFFDFDFDF),
                          shape: OvalBorder(),
                        ),
                      ),
                    ],
                    onPressed: (int index)
                    {
                      setState(() {
                    for (int i = 0; i < selection.length; i++) {
                      selection[i] = i == index;
                    }
                      });
                    },
                    renderBorder: false,
                    isSelected: selection),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 132,
                  height: 36,
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
                        builder: (context) => MyCart(
                        ),
                      ),
                      );
                    },
                    child: Text(
                      'Add to cart',
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
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19, top: 6),
            child: Text(
              'DESCRIPTION',
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
          Padding(
            padding: const EdgeInsets.only(left: 19, top: 6,),
            child: Container(
              width: 225,
              height: 45,
              child: Text(
              '- Celana Jeans dengan Pola Mom Fit \n -Bahan Katun Denim Tidak Melar \n -Pinggang Elastis memakai karet ',
    style: TextStyle(
    color: Color(0xFF6D6875),
    fontSize: 12,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w400,
    height: 1.33,
    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  '-Nyaman dipakai....',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text(
                    'Read more',
                    style: TextStyle(
                      color: Color(0xFFE5989B),
                      fontSize: 11,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                      height: 1.18,
                      letterSpacing: 0.07,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19,),
            child: Container(
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
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 11,),
            child: Row(
              children:
              [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.shield_outlined,
                      size: 13,
                      color: Color(0xFFE5989B),
                    ),
                    Icon(
                      Icons.check_sharp,
                      size: 5,
                      color: Color(0xFFE5989B),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Original product',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                  ),
                ),
                SizedBox(
                  width: 65,
                ),
                Icon(
                  Icons.history,
                  size: 13,
                  color: Color(0xFFE5989B),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Return of goods in 5 days',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 11,),
            child: Row(
              children:
              [

                    Image(
                      image: AssetImage(
                        'images/tag.jpg',
                      ),
                      width: 13,
                      height: 13,
                    ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Voucher code available',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
                  ),
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.wallet,
                  size: 13,
                  color: Color(0xFFE5989B),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Pay directly at your place',
                  style: TextStyle(
                    color: Color(0xFF6D6875),
                    fontSize: 12,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w400,
                    height: 1.33,
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
    );
  }
}
