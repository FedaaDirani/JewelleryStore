import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget stateBar(
) => Container(
  width: 428,
  height: 53,
  child: Row(
    children:
    [
      Padding(
        padding: const EdgeInsets.only(left: 33, top: 14,bottom: 18,),
        child: Container(
          width: 54,
          height: 21,
          child: Text(
            '9:41',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,

              letterSpacing: -0.32,
              color: Colors.black,

            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 275, top: 20, bottom: 21),
        child: Container(
          width: 18,
          height: 12,

          child: Image(
            image: AssetImage('images/signal.jpg'),
          ),
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Container(
        width: 17,
        height: 11.8,
        child: Icon(
          Icons.wifi,
          size: 17,
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Container(
        width: 21,
        height: 13,
        child: Icon(
          Icons.battery_std_outlined,
          size: 13,
        ),
      ),
    ],
  ),
);