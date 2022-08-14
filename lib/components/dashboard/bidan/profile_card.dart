import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/util/custom_elevated_button_icon.dart';

import '../../../consts/colors.dart';
import '../../../consts/fonts.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({
    Key? key,
  }) : super(key: key);

  final Color cardBackgroundColor = cardBlue;
  final Color cardTextColor = cardTextBlue;
  final Color cardBtnColor = cardDarkBlue;
  final String cardTitle = "PROFIL";
  final Widget img = Image.asset("assets/images/profile.png");

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
                              color: cardTextColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 15,
                          top: 8,
                          left: 27,
                          right: 27,
                        ),
                        child: Container(
                          color: cardBtnColor,
                          height: 0.7,
                        ),
                      ),
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, left: 27),
                          child: SizedBox(
                            height: 20,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        cardBtnColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Keluarga',
                                style: TextStyle(
                                    fontFamily: fontNunito,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 27, bottom: 5, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Divalidasi:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                              Text(
                                "6",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: fontWorkSans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 27, bottom: 5, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Ditolak:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                              Text(
                                "0",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: fontWorkSans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 27, bottom: 5, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Belum Divalidasi:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                              Text(
                                "0",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: fontWorkSans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 27, bottom: 5, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Data:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                              Text(
                                "6",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: fontWorkSans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, left: 27),
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        cardDarkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: SvgPicture.asset(
                                          "assets/icons/check.svg",
                                          color: Colors.white,
                                          height: 19,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                        text: 'Validasi Data',
                                        style: TextStyle(
                                            fontFamily: fontNunito,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )),
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
                      Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5, left: 27),
                          child: SizedBox(
                            height: 20,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        cardBtnColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Anggota Keluarga',
                                style: TextStyle(
                                    fontFamily: fontNunito,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 27, bottom: 5, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Divalidasi:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                              Text(
                                "1",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: fontWorkSans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 27, bottom: 5, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Ditolak:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                              Text(
                                "0",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: fontWorkSans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 27, bottom: 5, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Belum Divalidasi:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                              Text(
                                "0",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: fontWorkSans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 27, bottom: 15, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Data:",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontFamily: fontNunito,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                              Text(
                                "1",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: fontWorkSans,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  letterSpacing: 0.0,
                                  color: cardTextColor,
                                ),
                              ),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15, left: 27),
                        child: SizedBox(
                          height: 30,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        cardDarkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      fontFamily: fontNunito,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    WidgetSpan(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        child: SvgPicture.asset(
                                          "assets/icons/check.svg",
                                          color: Colors.white,
                                          height: 19,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                        text: 'Validasi Data',
                                        style: TextStyle(
                                            fontFamily: fontNunito,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              )),
                        ),
                      ),
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
