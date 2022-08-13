import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moms_care_mobile/components/util/custom_autocompleted_textfield.dart';
import 'package:moms_care_mobile/components/util/custom_text_field.dart';

import '../../../../consts/colors.dart';
import '../../../../consts/fonts.dart';
import '../../../util/custom_elevated_button_icon.dart';

class BidanTambahAncModal extends StatelessWidget {
  const BidanTambahAncModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        margin: const EdgeInsets.all(10),
        width: size.width * 0.9,
        height: size.height * 0.6,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Tambah Antenatal Care',
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
                      title: 'Nama Kepala Keluarga / Nomor KK',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Nama Ibu (Tanggal Lahir)',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Pemeriksaan Ke",
                      keyboardType: TextInputType.none,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/pregnant.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Tanggal Haid Terakhir",
                      hintText: "Cth. 31-12-2022",
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/date-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Kehamilan Ke",
                      hintText: "Cth. 2",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/number-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Tinggi Badan (Cm)",
                      hintText: "Cth. 165",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/ruler.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Berat Badan (Kg)",
                      hintText: "Cth. 65",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/weight.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Tekanan Darah Sistolik",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/blood.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Tekanan Darah Diastolik",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/blood.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Lengan Atas",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/number-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Tinggi Fundus (Dalam Cm)",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/number-input.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Hemoglobin Darah",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/blood.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomTextField(
                      title: "Denyut Jantung Janin (Dalam Menit)",
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      isRequired: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: SvgPicture.asset(
                          "assets/icons/heart.svg",
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Vaksin Tetanus (Sebelum Hamil)',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Vaksin Tetanus (Setelah Hamil)',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Posisi Janin',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Minum 90 Tablet Tambah Darah',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
                      ],
                      onSuggestionSelected: (value) => value,
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomAutocompletedTextField(
                      title: 'Konseling',
                      hintText: '- Pilih salah satu -',
                      controller: TextEditingController(),
                      isRequired: true,
                      items: const [
                        {'label': 'Dummy Data', 'value': 'dummy-data'}
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
