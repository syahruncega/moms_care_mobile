import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';
import '../bidan/deteksi_stunting/stunting_anak/bidan_detail_stunting_anak_modal.dart';
import '../bidan/deteksi_stunting/stunting_anak/ubah_stunting_anak_modal.dart';
import 'custom_elevated_button_icon.dart';

class CustomDialog extends StatelessWidget {
  final Widget img;
  final String title;
  final String message;
  const CustomDialog({
    required this.img,
    required this.title,
    required this.message,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    img,
                  ]),
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: fontNunito,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height * 0.02),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      message,
                      style: TextStyle(
                          fontFamily: fontNunito,
                          fontWeight: FontWeight.bold,
                          color: grey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomElevatedButtonIcon(
                      label: "Ya, Saya mengerti",
                      icon: SvgPicture.asset(
                        "assets/icons/warning.svg",
                        height: 25,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.blue,
                      onPressed: () {
                        Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (_) => const UbahStuntingAnakModal());
                      },
                    ),
                  ),
                  SizedBox(width: size.width * 0.02),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CustomElevatedButtonIcon(
                      label: "TUTUP",
                      icon: SvgPicture.asset(
                        "assets/icons/close.svg",
                        height: 25,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.red,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
