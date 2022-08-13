import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/util/custom_autocompleted_textfield.dart';
import 'package:moms_care_mobile/components/util/custom_text_field.dart';

import '../../../../../consts/colors.dart';
import '../../../../../consts/fonts.dart';
import '../../../util/custom_elevated_button_icon.dart';

class FilterAncModal extends StatelessWidget {
  const FilterAncModal({Key? key}) : super(key: key);

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
                    'Filter Data Antenatal Care',
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
                      title: 'Kategori Badan',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Risiko Tinggi', 'value': 'risiko_tinggi'},
                        {'label': 'Normal', 'value': 'normal'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Kategori Tekanan Darah',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Hipotensi', 'value': 'hipotensi'},
                        {'label': 'Normal', 'value': 'normal'},
                        {'label': 'Prahipertensi', 'value': 'prahipertensi'},
                        {'label': 'Hipertensi', 'value': 'hipertensi'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Kategori Lengan Atas',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Gurang Gizi (BBLR)', 'value': 'kurang_gizi'},
                        {'label': 'Normal', 'value': 'normal'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Kategori Denyut Jantung',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Normal', 'value': 'normal'},
                        {'label': 'Tidak Normal', 'value': 'tidak_normal'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Kategori Hemoglobin Darah',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Normal', 'value': 'normal'},
                        {'label': 'Anemia', 'value': 'anemia'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Vaksin Tetanus Sebelum Hamil',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Sudah', 'value': 'sudah'},
                        {'label': 'Belum', 'value': 'belum'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Vaksin Tetanus Setelah Hamil',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Sudah', 'value': 'sudah'},
                        {'label': 'Belum', 'value': 'belum'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Posisi Janin',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Normal', 'value': 'normal'},
                        {'label': 'Sungsang', 'value': 'sungsang'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Minum 90 Tabel Penambah Darah',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Sudah', 'value': 'sudah'},
                        {'label': 'Belum', 'value': 'belum'},
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Konseling',
                      hintText: 'Semua',
                      controller: TextEditingController(),
                      items: const [
                        {'label': 'Semua', 'value': 'semua'},
                        {'label': 'Sudah', 'value': 'sudah'},
                        {'label': 'Belum', 'value': 'belum'},
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
