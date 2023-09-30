import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget backIcon () =>
    Padding(
      padding: const EdgeInsets.only(left: 15, top: 10),
      child: Container(
        child: CircleAvatar(
          radius: 17,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
            child: IconButton(onPressed: (){}, icon: Icon(
              Icons.arrow_back_ios_new,
              size: 16,
              color: Color(0xFF6D6875),
            ),
            ),
          ),
        ),
      ),
    );