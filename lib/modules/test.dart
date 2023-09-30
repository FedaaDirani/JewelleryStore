import 'package:flutter/material.dart';
import 'package:jewelrey_store/shared/trapezium_clipper.dart';
import 'package:jewelrey_store/shared/triangle_painter.dart';

class Test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Container(
          width: double.infinity,
          color: Color(0xFFE5989B),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Transform.scale(
                scaleY: -1,
                child: ClipPath(
                  clipper: TrapeziumClipper(),
                  child: Container(
                    width: 300,
                    height: 190,
                    color: Color(0xFFE5989B),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 6/15
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Transform.scale(
                scaleX: -1,
                child: ClipPath(
                  clipper: TrapeziumClipper(),
                  child: Container(
                    height: 190,
                    color: Color(0xFFB5838D),
                    width: 214,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 6/15
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
