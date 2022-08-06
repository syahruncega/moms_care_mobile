import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:moms_care_mobile/consts/colors.dart';
import 'package:moms_care_mobile/consts/fonts.dart';

class CustomFileUpload extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget? icon;
  final bool isRequired;
  final bool isPicture;

  const CustomFileUpload({
    required this.title,
    required this.subTitle,
    this.icon,
    this.isRequired = false,
    this.isPicture = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: <Widget>[
      Row(children: [
        Text(
          title,
          style: const TextStyle(
              fontFamily: fontNunito, fontWeight: FontWeight.w600),
        ),
        if (isRequired)
          const Text(
            "*",
            style: TextStyle(
              fontFamily: fontNunito,
              fontWeight: FontWeight.w600,
              color: Colors.red,
            ),
          ),
      ]),
      SizedBox(
        height: size.height * 0.009,
      ),
      DottedBorder(
          borderType: BorderType.RRect,
          color: cardDarkGreen,
          radius: const Radius.circular(20),
          dashPattern: const [3, 3],
          strokeWidth: 2,
          child: Column(
            children: <Widget>[
              isPicture
                  ? Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: CircleAvatar(
                        radius: 58,
                        backgroundImage:
                            const AssetImage("assets/images/avatar.png"),
                        child: Stack(children: <Widget>[
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white70,
                              child: SvgPicture.asset(
                                "assets/icons/pencil.svg",
                                height: 25,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: icon ??
                          SvgPicture.asset(
                            "assets/icons/folder-color.svg",
                            width: size.width * 0.2,
                          ),
                    ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 8, bottom: 8),
                child: Text(
                  subTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: fontNunito,
                      color: grey.withOpacity(0.8),
                      fontSize: 16),
                ),
              ),
            ],
          )),
    ]);
  }
}
