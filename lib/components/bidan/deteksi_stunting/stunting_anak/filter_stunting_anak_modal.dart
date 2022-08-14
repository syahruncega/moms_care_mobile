import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/util/custom_autocompleted_textfield.dart';
import 'package:moms_care_mobile/components/util/custom_text_field.dart';

import '../../../../../consts/colors.dart';
import '../../../../../consts/fonts.dart';
import '../../../util/custom_elevated_button_icon.dart';

class FilterStuntingAnakModal extends StatelessWidget {
  const FilterStuntingAnakModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Filter Data Stunting Anak',
                    style: TextStyle(
                        fontFamily: fontNunito,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: grey),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                dashPattern: const [2, 2],
                color: cardDarkGreen,
                strokeWidth: 2,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(children: <Widget>[
                    CustomAutocompletedTextField(
                      title: 'Status',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Tervalidasi', 'value': 'tervalidasi'},
                        {
                          'label': 'Belum Tervalidasi',
                          'value': 'belum_tervalidasi'
                        },
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Kategori',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {
                          'label': 'Sangat Pendek (Risiko Stunting Tinggi)',
                          'value': 'sangat_pendek'
                        },
                        {
                          'label': 'Pendek(Risiko Stunting Sedang)',
                          'value': 'pendek'
                        },
                        {'label': 'Normal', 'value': 'normal'},
                        {'label': 'Tinggi', 'value': 'tinggi'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomElevatedButtonIcon(
                    label: "TUTUP",
                    icon: SvgPicture.asset(
                      "assets/icons/close.svg",
                      height: 25,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.red,
                    onPressed: () => Navigator.pop(context),
                  ),
                  SizedBox(width: size.width * 0.03),
                  CustomElevatedButtonIcon(
                    label: "PROSES",
                    icon: SvgPicture.asset(
                      "assets/icons/process.svg",
                      height: 25,
                      color: Colors.white,
                    ),
                    backgroundColor: colorSecondary,
                    onPressed: () => 1,
                  ),
                ]),
              )
            ]),
          ),
        ),
      ),
    );
  }
}