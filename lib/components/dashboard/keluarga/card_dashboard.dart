import 'package:flutter/material.dart';

import '../../../consts/colors.dart';
import '../../../consts/fonts.dart';

class CardDashboard extends StatelessWidget {
  const CardDashboard({
    required this.cardBackgroundColor,
    required this.cardTextColor,
    required this.cardBtnColor,
    required this.button,
    required this.cardTitle,
    required this.cardSubTitle,
    required this.img,
    Key? key,
  }) : super(key: key);

  final Color cardBackgroundColor;
  final Color cardTextColor;
  final Color cardBtnColor;
  final List<Widget> button;
  final String cardTitle;
  final String cardSubTitle;
  final Widget img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 24),
          child: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: cardBackgroundColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                        topRight: Radius.circular(8.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: grey.withOpacity(0.2),
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 0, right: 48, top: 12),
                        child: Text(
                          cardTitle,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: fontNunito,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              letterSpacing: 0.2,
                              color: cardTextColor
                              // color: nearlyDarkBlue.withOpacity(0.6),
                              ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 68, bottom: 12, right: 16, top: 8),
                        child: Text(
                          cardSubTitle,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: fontWorkSans,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            letterSpacing: 0.0,
                            color: cardTextColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8,
                          top: 8,
                          left: 27,
                          right: 27,
                        ),
                        child: Container(
                          color: cardBtnColor,
                          height: 0.7,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: button),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -12,
                left: 0,
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child: img,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
