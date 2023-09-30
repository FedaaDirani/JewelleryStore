import 'package:flutter/material.dart';
import 'package:jewelrey_store/adaptive/adaptive_indicator.dart';
import 'package:jewelrey_store/adaptive/constants.dart';
import 'package:jewelrey_store/dashboard/menu.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color(0x19FFCDB2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            SizedBox(
              height: 25,
            ),
            Transform.scale(
              scaleY: -1,
              child: IconButton(
                onPressed: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Menu(
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
            Padding(
              padding: const EdgeInsets.only(top: 7, left: 15),
              child: Text(
                'Welcome, Ranim',
                style: TextStyle(
                  color: Color(0xFF5F5A5A),
                  fontSize: 15,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                  letterSpacing: -0.24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 17),
              child: Container(
                width: 385,
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
                        width: 210,
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 28),
                  child: Container(
                    width: 180,
                    height: 104,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Color(0xFFB5838D),
                            percent: 0.90,
                            lineWidth: 5.0,
                            center: Transform.rotate(
                              angle: -175,
                              child: Icon(
                                Icons.arrow_upward_sharp,
                                color: Color(0xFFADB5BD),
                                size: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text(
                                  'Total Sales',
                                  style: TextStyle(
                                    color: Color(0xFF8A92A6),
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w700,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  '\$560K',
                                  style: TextStyle(
                                    color: Color(0xFF6D6875),
                                    fontSize: 17,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 28),
                  child: Container(
                    width: 180,
                    height: 104,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Color(0xFF08B1BA),
                            percent: 0.80,
                            lineWidth: 5.0,
                            center: Transform.rotate(
                              angle: -175,
                              child: Icon(
                                Icons.arrow_upward_sharp,
                                color: Color(0xFFADB5BD),
                                size: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text(
                                  'Total Profit',
                                  style: TextStyle(
                                    color: Color(0xFF8A92A6),
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w700,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  '\$185K',
                                  style: TextStyle(
                                    color: Color(0xFF6D6875),
                                    fontSize: 17,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 28),
                  child: Container(
                    width: 180,
                    height: 104,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Color(0xFFB5838D),
                            percent: 0.75,
                            lineWidth: 5.0,
                            center: Transform.rotate(
                              angle: -175,
                              child: Icon(
                                Icons.arrow_upward_sharp,
                                color: Color(0xFFADB5BD),
                                size: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text(
                                  'Total Cost',
                                  style: TextStyle(
                                    color: Color(0xFF8A92A6),
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w700,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  '\$375K',
                                  style: TextStyle(
                                    color: Color(0xFF6D6875),
                                    fontSize: 17,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 28),
                  child: Container(
                    width: 180,
                    height: 104,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Color(0xFF08B1BA),
                            percent: 0.60,
                            lineWidth: 5.0,
                            center: Transform.rotate(
                              angle: -175,
                              child: Icon(
                                Icons.arrow_upward_sharp,
                                color: Color(0xFFADB5BD),
                                size: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text(
                                  'Revenue',
                                  style: TextStyle(
                                    color: Color(0xFF8A92A6),
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w700,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  '\$742K',
                                  style: TextStyle(
                                    color: Color(0xFF6D6875),
                                    fontSize: 17,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 28),
                  child: Container(
                    width: 180,
                    height: 104,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Color(0xFFB5838D),
                            percent: 0.45,
                            lineWidth: 5.0,
                            center: Transform.rotate(
                              angle: -175,
                              child: Icon(
                                Icons.arrow_upward_sharp,
                                color: Color(0xFFADB5BD),
                                size: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text(
                                  'Net Income',
                                  style: TextStyle(
                                    color: Color(0xFF8A92A6),
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w700,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  '\$150K',
                                  style: TextStyle(
                                    color: Color(0xFF6D6875),
                                    fontSize: 17,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 28),
                  child: Container(
                    width: 180,
                    height: 104,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.white
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircularPercentIndicator(
                            radius: 35.0,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: Color(0xFF08B1BA),
                            percent: 0.30,
                            lineWidth: 5.0,
                            center: Transform.rotate(
                              angle: -175,
                              child: Icon(
                                Icons.arrow_upward_sharp,
                                color: Color(0xFFADB5BD),
                                size: 35,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, left: 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:
                              [
                                Text(
                                  'Today',
                                  style: TextStyle(
                                    color: Color(0xFF8A92A6),
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w700,
                                    height: 0.12,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  '\$4600',
                                  style: TextStyle(
                                    color: Color(0xFF6D6875),
                                    fontSize: 17,
                                    fontFamily: 'SF Pro Text',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                    letterSpacing: -0.41,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 57, left: 35),
              child: Row(
                children:
                [
                  Container(
                    width: 179,
                    height: 84,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10),),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children:
                        [
                          Text(
                            '12K',
                            style: TextStyle(
                              color: Color(0xFF232D42),
                              fontSize: 20,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w700,
                              height: 0.06,
                              letterSpacing: -0.41,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Application Visitors',
                            style: TextStyle(
                              color: Color(0xFF8A92A6),
                              fontSize: 17,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 179,
                    height: 84,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children:
                        [
                          Text(
                            '2500',
                            style: TextStyle(
                              color: Color(0xFF232D42),
                              fontSize: 20,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w700,
                              height: 0.06,
                              letterSpacing: -0.41,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'New Customers',
                            style: TextStyle(
                              color: Color(0xFF8A92A6),
                              fontSize: 17,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                              letterSpacing: -0.41,
                            ),
                          ),
                        ],
                      ),
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
      ),
    );
  }
}
